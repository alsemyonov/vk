# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Object < Common
        # @!attribute [r] definition
        #   @return [Vk::Schema::Definitions::Object]
        argument :definition

        def create_model
          overwrite_template('object.tt', definition.definition_file)
        end

        def create_model_spec
          overwrite_template('object_spec.tt', definition.spec_file)
        end
      end
    end
  end
end
