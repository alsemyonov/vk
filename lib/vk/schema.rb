# frozen_string_literal: true
require 'vk'
require 'vk/schema/definition/error'
require 'pathname'

module Vk
  class Schema
    autoload :Definition, 'vk/schema/definition'
    autoload :Generator, 'vk/schema/generator'
    autoload :Method, 'vk/schema/method'
    autoload :Namespace, 'vk/schema/namespace'
    autoload :Object, 'vk/schema/object'
    autoload :Response, 'vk/schema/response'

    # @param [String] path
    def initialize(path: 'data/schema')
      @path = Pathname.new(path)
      @methods = JSON.parse(File.read(@path / 'methods.json'))
      @objects = JSON.parse(File.read(@path / 'objects.json'))
      @responses = JSON.parse(File.read(@path / 'responses.json'))
      @schema = JSON.parse(File.read(@path / 'responses.json'))
    end

    # @return [Pathname]
    attr_reader :path

    # @!group objects.json

    # @return [<Definition::Object>]
    def objects
      objects_reference.values.select do |value|
        value.is_a?(Definition::Object)
      end
    end

    # @return [<Definition::Type>]
    def types
      objects_reference.values.select do |value|
        value.is_a?(Definition::Type)
      end
    end

    # @return [{String => Definition::Object}]
    def namespaced_objects
      @namespaced_objects ||= objects_reference.values.each_with_object({}) do |value, memo|
        next unless value.is_a?(Definition::Object)
        memo[value.namespace] ||= []
        memo[value.namespace] << value
      end
    end

    # @return [{String => Definition::Type}]
    def namespaced_types
      @namespaced_types ||= objects_reference.values.each_with_object({}) do |value, memo|
        next unless value.is_a?(Definition::Type)
        memo[value.namespace] ||= []
        memo[value.namespace] << value
      end
    end

    # TODO: fix after JSON Schema fixed
    OBJECTS_DEFINITION = %r{\A(objects\.json)?#/definitions/}
    RESPONSES_DEFINITION = %r{\Aresponses\.json?#/definitions/}

    # @param [String] ref
    # @return [Definition]
    def definition_of(ref)
      case ref
      when OBJECTS_DEFINITION
        objects_reference[ref.sub(OBJECTS_DEFINITION, '')]
      else
        raise "Unknown reference: #{ref.inspect}"
      end
    end

    # @return [{String => Definition::Object, Definition::Type}]
    def objects_reference
      @objects_reference ||=
        @objects['definitions'].each_with_object({}) do |(name, definition), memo|
          memo[name] = if object?(definition)
                         Definition::Object.new(name, definition, self)
                       elsif definition['type']
                         Definition::Type.new(name, definition, self)
                       else
                         raise "What is #{name}, #{definition.inspect}?"
                       end
        end
    end

    # @!group methods.json

    # @return [<Vk::Definition::Error>]
    def errors
      @methods['errors'].map do |error|
        Vk::Schema::Definition::Error.new(error['name'], error, self)
      end
    end

    # @return [<Vk::Definition::Error>]
    def methods
      @methods['methods'].map do |method|
        Definition::Method.new(method['name'], method, self)
      end
    end

    # @return [{String => Definition::methods}]
    def namespaced_methods
      @namespaced_methods ||=
        methods.each_with_object({}) do |value, memo|
          next unless value.is_a?(Definition::Method)
          memo[value.namespace] ||= []
          memo[value.namespace] << value
        end
    end

    # @!group responses.json

    # @return [<Definition::Error>]
    def responses
      @responses['definitions'].map do |name, response|
        Definition::Response.new(name, response, self)
      end
    end

    # @!group schema.json

    # @return [<Definition::Error>]
    def schemas
      @schema['definitions'].map do |name, response|
        Definition::Response.new(name, response, self)
      end
    end

    # @!group Client

    # @return [<String>]
    def namespaces
      @namespaces ||= (
        namespaced_methods.keys |
          namespaced_objects.keys |
          namespaced_types.keys
      ).map(&:underscore)
    end

    private

    # @param [{String => String, Hash}] definition
    # @return [Boolean]
    def object?(definition)
      definition['type'] == 'object' || definition['allOf']
    end
  end
end
