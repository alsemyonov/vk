# frozen_string_literal: true
require 'vk/schema/definition/constant'

module Vk
  class Schema
    class Definition
      class Type < Constant
        PRIMITIVES = Hash.new do |hash, key|
          hash[key] = key.to_s.camelcase
        end

        alias dry_type referenced_type_name

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
