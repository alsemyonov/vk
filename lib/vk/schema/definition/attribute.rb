# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      class Attribute < self
        TYPES = Hash.new do |hash, key|
          hash[key] = "API::Types::Coercible::#{key.capitalize}"
        end.merge(
          'integer' => 'API::Types::Coercible::Int',
          'number' => 'API::Types::Coercible::Int',
          'object' => 'API::Types::Coercible::Hash',
          'boolean' => 'API::Types::Bool'
        )

        def initialize(name, definition, schema, object)
          super(name, definition, schema)
          @object = object
        end

        # @return [Definition::Object]
        attr_reader :object

        # @param [#to_s] type
        def self.type_for(type)
          TYPES[type.to_s]
        end

        # @return [String]
        def attribute_name
          ":#{@name}".strip
        end

        # @return [String]
        def type
          type = if simple?
                   simple_type
                 elsif array?
                   type_variants
                 elsif reference?
                   referenced_definition.dry_type
                 elsif polymorphic?
                   polymorphic_type
                 elsif inline_object?
                   # TODO: make inline struct definition
                   'API::Types::Coercible::Hash'
                 else
                   puts "Unknown definition: #{definition.inspect}"
                 end
          type += '.optional' unless object.required_attribute?(@name)
          type
        end

        # @return [String]
        def simple_type
          result = self.class.type_for(definition['type'])
          if array_item?
            member = referenced_item_definition.referenced_type_name
            result += ".member(#{member})"

            if definition['maxItems']
              result += ".constrained(max_size: #{definition['maxItems']})"
            end
          end
          result
        end

        # @return [String]
        def type_variants
          definition['type'].map do |variant|
            self.class.type_for(variant)
          end.join(' | ')
        end

        # @return [String]
        def polymorphic_type
          definition['allOf'].map do |definition|
            schema.definition_of(definition['$ref']).dry_type
          end.join(' | ')
        end

        SAMPLE_VALUES_REGEXP = /Sample values: (((?<samples>'([\w_]+)')(,\s*|[\w —\(\)]+[;.])?)+)/

        # @return [String]
        def returned_type
          type =
            if simple?
              definition['type'].capitalize
            elsif array?
              definition['type'].map(&:capitalize).join(', ')
            elsif reference?
              referenced_definition.referenced_type_name
            elsif polymorphic?
              definition['allOf'].map do |definition|
                schema.definition_of(definition['$ref']).referenced_type_name
              end.join(', ')
            elsif inline_object?
              'Hash' # TODO: make inline struct definition
            else
              puts "Unknown definition: #{definition.inspect}"
            end
          sample_values = SAMPLE_VALUES_REGEXP.match(description)
          if sample_values
            type += ", #{Array(sample_values[:samples]).join(', ')}"
          end
          type
        end

        # @return [Boolean]
        def simple?
          definition['type'].is_a?(String)
        end

        # @return [Boolean]
        def array?
          definition['type'].is_a?(Array)
        end

        # @return [Boolean]
        def array_item?
          definition['items'].is_a?(Hash) && definition['items']['$ref'].is_a?(String)
        end

        # @return [Boolean]
        def reference?
          definition['$ref'].is_a?(String)
        end

        # @return [Boolean]
        def polymorphic?
          definition['allOf'].is_a?(Array)
        end

        def inline_object?
          definition.values.first.is_a?(Hash)
        end

        # @return [Definition]
        def referenced_item_definition
          schema.definition_of(definition['items']['$ref'])
        end

        # @return [Definition]
        def referenced_definition
          schema.definition_of(definition['$ref'])
        end
      end
    end
  end
end
