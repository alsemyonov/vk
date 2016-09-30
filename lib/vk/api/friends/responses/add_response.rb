# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AddResponse < Vk::Schema::Response
          # @return [Integer] Friend request status
          attribute :response, API::Types::Coercible::Int.enum(1, 2, 4).optional.default(nil)
        end
      end
    end
  end
end
