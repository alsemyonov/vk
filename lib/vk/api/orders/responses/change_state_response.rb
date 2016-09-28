# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Orders < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ChangeStateResponse < Vk::Schema::Response
          # @return [String] New state
          attribute :response, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
