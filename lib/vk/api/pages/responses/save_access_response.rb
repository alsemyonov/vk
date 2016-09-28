# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class SaveAccessResponse < Vk::Schema::Response
          # @return [Integer] Page ID
          attribute :response, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
