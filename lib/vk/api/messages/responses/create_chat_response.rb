# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CreateChatResponse < Vk::Schema::Response
          # @return [Integer] Chat ID
          attribute :response, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
