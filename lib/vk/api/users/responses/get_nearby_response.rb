# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetNearbyResponse < Vk::Schema::Response
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, API::Types::Coercible::Hash.optional
        end
      end
    end
  end
end
