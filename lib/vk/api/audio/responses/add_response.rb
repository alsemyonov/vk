# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AddResponse < Vk::Schema::Response
          # @return [Integer] Audio ID
          attribute :response, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
