# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      class Attribute < self
        TYPES = Hash.new do |hash, key|
          hash[key] = "Schema::Types::Coercible::#{key.capitalize}"
        end.merge(
          'integer' => 'Schema::Types::Coercible::Int',
          'number' => 'Schema::Types::Coercible::Int',
          'object' => 'Schema::Types::Coercible::Hash',
          'boolean' => 'Schema::Types::Bool'
        )

        def initialize(name, definition, schema, object)
          super(name, definition, schema)
          @object = object
        end

        # @return [Definition::Object]
        attr_reader :object

        # @param [#to_s] type
        # @param [String] type
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
                 elsif definition.values.first.is_a?(Hash)
                   # TODO: make inline struct definition
                   'Schema::Types::Coercible::Hash'
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

        # @param [String] reference
        def dereference(reference)
          reference.gsub(%r{#/definitions/}, '')
        end

        # @return [String]
        def returned_type
          if simple?
            definition['type'].capitalize
          elsif array?
            definition['type'].map(&:capitalize).join(', ')
          elsif reference?
            referenced_definition.type_name
          elsif polymorphic?
            definition['allOf'].map do |definition|
              schema.definition_of(definition['$ref']).referenced_type_name
            end.join(', ')
          elsif definition.values.first.is_a?(Hash)
            'Hash' # TODO: make inline struct definition
          else
            puts "Unknown definition: #{definition.inspect}"
          end
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

        # @return [String]
        def referenced_item
          dereference(definition['items']['$ref'])
        end

        # @return [Definition]
        def referenced_item_definition
          schema.reference[referenced_item]
        end

        # @return [Boolean]
        def reference?
          definition['$ref'].is_a?(String)
        end

        # @return [Boolean]
        def polymorphic?
          definition['allOf'].is_a?(Array)
        end

        # @return [String]
        def referenced
          dereference(definition['$ref'])
        end

        # @return [Definition]
        def referenced_definition
          schema.reference[referenced]
        end
      end
    end
  end
end
