# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      class Object < self
        # @param [String] name
        # @param [Hash{String => String, Hash}] definition
        # @param [Schema::Objects] schema
        def initialize(name, definition, schema)
          super
          @namespace, @name = name.split(/_/, 2)
        end

        # @return [String]
        def namespace
          @namespace.camelcase
        end

        # @return [String]
        def type_name
          @type_name ||= name.camelcase
        end

        # @return [String]
        def referenced_type_name
          "Model::#{namespace}::#{type_name}"
        end

        def parent
          if definition['type'] == 'object'
            'Vk::Schema::Model'
          else
            reference = definition['allOf'].detect do |definition|
              definition['$ref']
            end
            schema.definition_of(reference['$ref']).referenced_type_name
          end
        end

        # @return [<Attribute>]
        def attributes
          @attributes ||= properties.map do |name, definition|
            Attribute.new(name, definition, schema, self)
          end
        end

        # @return [Hash{String => Hash}]
        def properties
          if definition['properties']
            definition['properties']
          elsif definition['allOf']
            definition['allOf']&.each_with_object({}) do |definition, memo|
              memo.merge!(definition['properties'] || {})
            end
          end
        end

        # @param [String] attribute
        # @return [Boolean]
        def required_attribute?(attribute)
          return false unless definition.key?('required')
          definition['required'].include?(attribute.to_s)
        end

        # @return [String]
        def model_file
          "lib/#{require}.rb"
        end

        # @return [String]
        def require
          "vk/schema/model/#{@namespace}/#{@name}"
        end

        # @return [String]
        def model_spec_file
          "spec/#{require}_spec.rb"
        end

        def dry_type
          "Dry::Types[#{referenced_type_name}]"
        end
      end
    end
  end
end
