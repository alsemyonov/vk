# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetAppPermissionsResponse < Vk::Schema::Response
          # @return [Integer] Permissions mask
          attribute :response, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
