# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Objects < Common
        # @!attribute [r] schema
        #   @return [Vk::Schema]
        argument :schema

        def create_models
          schema.objects.each do |object|
            Generator::Object.start([object])
          end
        end

        def create_models_autoload
          overwrite_template('objects.tt', 'lib/vk/api/objects.rb')
        end
      end
    end
  end
end
