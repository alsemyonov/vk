# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Model < Common
        # @return [Definitions::Object]
        # @!attribute :definition
        argument :definition

        def create_model
          overwrite_template('model.tt', definition.model_file)
        end

        def create_model_spec
          overwrite_template('model_spec.tt', definition.model_spec_file)
        end
      end
    end
  end
end
