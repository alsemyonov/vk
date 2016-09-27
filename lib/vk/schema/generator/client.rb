# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Client < Common
        # @!attribute [r] schema
        #   @return [Vk::Schema]
        argument :schema

        def create_client_methods
          overwrite_template('client.tt', 'lib/vk/api/client.rb')
        end
      end
    end
  end
end
