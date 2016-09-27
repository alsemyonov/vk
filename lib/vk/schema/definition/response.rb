# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      class Response < Constant
        include HasAttributes

        # @param [String] name
        # @param [Hash] definition
        # @param [Vk::Schema] schema
        def initialize(name, definition, schema)
          super
          @request, @name = @name.split(/_/, 2)
          @request = @request.underscore
          @name = "#{@request}_response"
        end

        # @return [String]
        def request
          @request.camelcase
        end

        # @return [String]
        def require
          "vk/api/#{@namespace}/responses/#{@name}"
        end

        # @return [String]
        def parent
          if definition['type'] == 'object'
            'Vk::Schema::Response'
          else
            reference = definition['allOf'].detect do |definition|
              definition['$ref']
            end
            schema.definition_of(reference['$ref']).referenced_type_name
          end
        end

        def additional_properties?
          definition['additionalProperties']
        end
      end
    end
  end
end
