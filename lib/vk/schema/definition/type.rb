# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      class Type < self
        PRIMITIVES = Hash.new do |hash, key|
          hash[key] = key.to_s.camelcase
        end

        # @return [String]
        def type_name
          @type_name ||= name.camelcase
        end

        # @return [String]
        def referenced_type_name
          "Schema::Types::#{type_name}"
        end
        alias dry_type referenced_type_name

        # @return [String]
        def type_file
          "lib/#{require}.rb"
        end

        # @return [String]
        def type_spec_file
          "spec/#{require}_spec.rb"
        end

        # @return [String]
        def require
          "vk/schema/types/#{name}"
        end

        def type_definition
          result = Attribute.type_for(definition['type']).gsub(/^Types::/, '')
          if definition['enum']
            values = definition['enum'].map do |value|
              value.is_a?(String) ? "'#{value}'" : value
            end
            result += ".enum(#{values.join(', ')})"
          end
          result
        end

        def primitive
          PRIMITIVES[definition['type']]
        end
      end
    end
  end
end
