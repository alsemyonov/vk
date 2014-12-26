require 'vk'

require 'active_support/core_ext/class/attribute'
require 'active_support/core_ext/array/extract_options'
require 'active_support/core_ext/hash/indifferent_access'
require 'active_support/hash_with_indifferent_access'

module Vk
  dsl! # require DSL methods in Vk::Request

  class Base
    class_attribute :identity_map
    # @return [Vk::Request]
    class_attribute :loader
    class_attribute :key_field
    class_attribute :fields
    self.fields = []
    self.loader = Vk.client
    self.key_field = :id

    # Find object in identity map or initialize object
    def self.find(*ids)
      options = ids.extract_options!
      if ids.count == 1
        id = ids.first.to_i
        identity_map[id] ||= new(id, options)
      elsif respond_to?(:find_all)
        find_all(ids, options)
      else
        ids.map do |id|
          find(id, options)
        end
      end
    end

    instance_eval { alias [] find }

    def self.method_missing(method, *args)
      if identity_map.respond_to?(method)
        identity_map.send(method, *args)
      else
        super
      end
    end

    def self.inherited(subclass)
      super(subclass)
      subclass.identity_map = {}
      subclass.fields = []
    end

    def initialize(id, options = {})
      @attributes = ActiveSupport::HashWithIndifferentAccess.new

      if id.is_a?(Hash)
        options[:data] = id
        id = options[:data][key_field.to_s]
      end

      self.id = id
      self.class.identity_map[id] = self

      if options.key? :data
        @attributes.merge!(options[:data].with_indifferent_access)
      else
        load_data(options)
      end
    end

    attr_reader :attributes

    def id=(id)
      @attributes[key_field] = id
    end

    # @return [String]
    def id
      @attributes[key_field].to_s
    end

    def read_attribute(name)
      if !@attributes.key?(name) && self.class.fields.include?(name.to_sym)
        load_data(fields: name)
      end
      @attributes[name]
    end

    def method_missing(method, *args)
      if method =~ /\?\Z/
        respond_to_missing?(method) && @attributes[method]
      elsif @attributes.key?(method)
        @attributes[method]
      elsif self.class.fields.include?(method.to_sym)
        read_attribute(method.to_s)
      else
        super
      end
    end

    def respond_to_missing?(method)
      @attributes.key?(method) || self.class.fields.include?(method.to_sym)
    end

    def logger
      Vk.logger
    end

    def to_hash
      attributes.to_hash
    end

    def inspect
      "#<#{self.class.name}:#{id} @attributes=#{@attributes.inspect}>"
    end

    protected

    def load_data(options = {})
      # raise 'Not implemented. Use subclasses'
    end
  end
end
