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
          'boolean' => 'API::Types::Form::Bool'
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
                 elsif multiple_types?
                   type_variants
                 elsif reference?
                   referenced_definition.dry_type
                 elsif polymorphic?
                   polymorphic_type
                 elsif inline_object?
                   # TODO: make inline struct definition
                   'API::Types::Coercible::Hash'.tap do |hash|
                   end
                 else
                   puts "Unknown definition: #{definition.inspect}"
                 end
          type += '.optional' unless required?
          type += ".default(#{default_value})" if default? || optional?
          type
        end

        # @return [Boolean]
        def default?
          definition.key?('default')
        end

        # @return [Boolean]
        def enum?
          definition.key?('enum')
        end

        # @return [Object]
        def default_value
          if default?
            value = if enum?
                      definition['enum'][
                        definition['default']
                      ]
                    else
                      definition['default']
                    end
            value = value == 1 if boolean?
            # TODO: fix following after schema fixed
            value = [] if array? && value.zero?
            value = nil if string? && !value.is_a?(String)
            value
          end.inspect
        end

        # @return [String]
        def boolean?
          definition['type'] == 'boolean'
        end

        # @return [String]
        def string?
          definition['type'] == 'string'
        end

        # @return [Boolean]
        def required?
          object.required_attribute?(@name) || definition['required']
        end

        # @return [Boolean]
        def optional?
          !required?
        end

        # @return [String]
        def simple_type
          result = self.class.type_for(definition['type'])
          if array_item?
            member = if definition['items']['$ref'].is_a?(String)
                       referenced_item_definition.referenced_type_name
                     elsif definition['items']['type']
                       self.class.type_for(definition['items']['type'])
                     end
            result += ".member(#{member})" if member

            if definition['maxItems']
              result += ".constrained(max_size: #{definition['maxItems']})"
            end
          elsif enum?
            result += ".enum(#{definition['enum'].map(&:inspect).join(', ')})"
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
            elsif multiple_types?
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
        def multiple_types?
          definition['type'].is_a?(Array)
        end

        def array?
          definition['type'] == 'array'
        end

        # @return [Boolean]
        def array_item?
          array? && definition['items'].is_a?(Hash)
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
