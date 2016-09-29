# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Type < Common
        # @!attribute [r] definition
        #   @return [Vk::Schema::Definitions::Object]
        argument :definition

        create_definition
      end
    end
  end
end
