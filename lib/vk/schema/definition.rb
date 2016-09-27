# frozen_string_literal: true
require 'vk/schema'
require 'active_support/core_ext/string/inflections'

module Vk
  class Schema
    class Definition
      autoload :Attribute, 'vk/schema/definition/attribute'
      autoload :Constant, 'vk/schema/definition/constant'
      autoload :Error, 'vk/schema/definition/error'
      autoload :HasAttributes, 'vk/schema/definition/has_attributes'
      autoload :Method, 'vk/schema/definition/method'
      autoload :Object, 'vk/schema/definition/object'
      autoload :Response, 'vk/schema/definition/response'
      autoload :Type, 'vk/schema/definition/type'

      # @param [String] name
      # @param [Hash{String => String, Hash}] definition
      # @param [Vk::Schema] schema
      def initialize(name, definition, schema)
        @name = name
        @definition = definition
        @schema = schema
      end

      # @return [String]
      attr_reader :name

      # @return [Hash]
      attr_reader :definition

      # @return [Schema]
      attr_reader :schema

      # @return [String]
      def description
        definition['description']&.gsub(/([{}])/, '\$1')&.strip ||
          '@see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json'
      end

      # @return [String]
      def to_s
        name
      end
    end
  end
end
