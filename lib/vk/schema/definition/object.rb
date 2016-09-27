# frozen_string_literal: true
require 'vk/schema/definition/constant'

module Vk
  class Schema
    class Definition
      class Object < Constant
        include HasAttributes

        # @return [String]
        def parent
          if definition['type'] == 'object'
            'Vk::Schema::Object'
          else
            reference = definition['allOf'].detect do |definition|
              definition['$ref']
            end
            schema.definition_of(reference['$ref']).referenced_type_name
          end
        end

        # @return [String]
        def dry_type
          "Dry::Types[#{referenced_type_name}]"
        end
      end
    end
  end
end
