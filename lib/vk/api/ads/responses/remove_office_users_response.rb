# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class RemoveOfficeUsersResponse < Vk::Schema::Response
          # @return [Boolean] true if success
          attribute :response, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
