# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Type < Common
        # @!attribute [r] definition
        #   @return [Vk::Schema::Definitions::Object]
        argument :definition

        def create_model
          overwrite_template('type.tt', definition.definition_file)
        end

        def create_model_spec
          overwrite_template('type_spec.tt', definition.spec_file)
        end
      end
    end
  end
end
