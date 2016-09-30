# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetAppBalanceResponse < Vk::Schema::Response
          # @return [Integer] App balance
          attribute :response, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
