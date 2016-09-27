# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Models < Common
        # @return [Schema::Objects]
        # @!attribute :schema
        argument :schema

        def create_types
          overwrite_template('models.tt', 'lib/vk/schema/models.rb')
        end
      end
    end
  end
end
