# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Types < Common
        # @!attribute [r] schema
        #   @return [Vk::Schema]
        argument :schema

        def create_types
          schema.types.each do |type|
            Generator::Type.start([type])
          end
        end

        def create_types_autoload
          overwrite_template('types.tt', 'lib/vk/api/types.rb')
        end
      end
    end
  end
end
