# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CopyResponse < Vk::Schema::Response
          # @return [Integer] Photo ID
          attribute :response, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
