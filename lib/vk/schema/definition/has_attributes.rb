# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      module HasAttributes
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
          elsif definition['allOf'].is_a?(Array)
            definition['allOf'].each_with_object({}) do |definition, memo|
              memo.merge!(definition['properties'] || {})
            end
          elsif definition['parameters'].is_a?(Array)
            definition['parameters'].each_with_object({}) do |parameter, memo|
              memo[parameter['name']] = parameter
            end
          else
            {}
          end
        end

        # @param [String] attribute
        # @return [Boolean]
        def required_attribute?(attribute)
          return false unless definition.key?('required')
          definition['required'].include?(attribute.to_s)
        end
      end
    end
  end
end
