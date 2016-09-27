# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Types < Common
        # @return [Schema::Objects]
        # @!attribute :schema
        argument :schema

        def create_types
          overwrite_template('types.tt', 'lib/vk/schema/types.rb')
        end
      end
    end
  end
end
