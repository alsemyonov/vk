# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Errors < Common
        # @return [Schema::Objects]
        # @!attribute :schema
        argument :schema

        def create_types
          overwrite_template('errors.tt', 'lib/vk/schema/errors.rb')
        end
      end
    end
  end
end
