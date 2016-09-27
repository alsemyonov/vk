# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Type < Common
        # @return [Definitions::Object]
        # @!attribute :definition
        argument :definition

        def create_model
          overwrite_template('type.tt', definition.type_file)
        end

        def create_model_spec
          overwrite_template('type_spec.tt', definition.type_spec_file)
        end
      end
    end
  end
end
