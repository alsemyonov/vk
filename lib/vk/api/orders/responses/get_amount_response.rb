# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Orders < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetAmountResponse < Vk::Schema::Response
          # @return [API::Orders::Amount] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Orders::Amount].optional.default(nil)
        end
      end
    end
  end
end
