# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetStreetsByIdResponse < Vk::Schema::Response
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, API::Types::Coercible::Array.member(API::Database::Street).optional
        end
      end
    end
  end
end
