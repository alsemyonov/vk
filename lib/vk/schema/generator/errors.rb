# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Errors < Common
        # @!attribute [r] schema
        #   @return [Vk::Schema]
        argument :schema

        def create_types
          overwrite_template('errors.tt', 'lib/vk/api/errors.rb')
        end
      end
    end
  end
end
