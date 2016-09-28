# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetByIdResponse < Vk::Schema::Response
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, API::Types::Coercible::Array.member(API::Photos::PhotoFull).optional
        end
      end
    end
  end
end
