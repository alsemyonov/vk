# frozen_string_literal: true
require 'vk/schema'

module Vk
  class Schema
    class Objects < self
      # @param [String] schema
      def initialize(schema: 'data/schema/objects.json')
        super
      end

      # @return [<Definition::Object>]
      def objects
        @objects ||= reference.values.select do |value|
          value.is_a?(Definition::Object)
        end
      end

      # @return [<Definition::Type>]
      def types
        @types ||= reference.values.select do |value|
          value.is_a?(Definition::Type)
        end
      end

      # @return [{String => <Definition::Object>}]
      def namespaces
        @namespaces ||= reference.values.each_with_object({}) do |value, memo|
          next unless value.is_a?(Definition::Object)
          memo[value.namespace] ||= []
          memo[value.namespace] << value
        end
      end

      # @param [String] ref
      # @return [Definition]
      def definition_of(ref)
        reference[ref.gsub(%r{#/definitions/}, '')]
      end

      # @return [Hash{String => Definition}]
      def reference
        return @reference if defined?(@reference)
        @reference = {}
        json['definitions'].each do |name, definition|
          @reference[name] = if object?(definition)
                               Definition::Object.new(name, definition, self)
                             elsif definition['type']
                               Definition::Type.new(name, definition, self)
                             else
                               raise "What is #{name}, #{definition.inspect}?"
                             end
        end
        @reference
      end

      private

      def object?(definition)
        definition['type'] == 'object' || definition['allOf']
      end
    end
  end
end
