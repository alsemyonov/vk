require 'vk'

require 'active_support/core_ext/class/attribute'
require 'active_support/core_ext/array/extract_options'
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
    self.loader = Vk.request

    class << self
      # Find object in identity map or initialize object
      def find(*ids)
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

      alias [] find

      def method_missing(method, *args)
        if identity_map.respond_to?(method)
          identity_map.send(method, *args)
        else
          super
        end
      end

      def inherited(subclass)
        super(subclass)
        subclass.identity_map = {}
        subclass.fields = []
      end
    end

    def initialize(id, options = {})
      @attributes = ActiveSupport::HashWithIndifferentAccess.new

      self.id = id
      self.class.identity_map[id] = self

      if options.key? :data
        @attributes.merge!(options[:data])
      else
        load_data(options)
      end
    end

    attr_reader :attributes

    def id=(id)
      @attributes[key_field] = id
    end

    def id
      @attributes[key_field]
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

    def inspect
      "#<#{self.class.name}:#{id} @attributes=#{@attributes.inspect}>"
    end

    protected

    def load_data(options = {})
      raise 'Not implemented. Use subclasses'
    end
  end
end
