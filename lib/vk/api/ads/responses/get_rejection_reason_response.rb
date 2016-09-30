# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetRejectionReasonResponse < Vk::Schema::Response
          # @return [API::Ads::RejectReason] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Ads::RejectReason].optional.default(nil)
        end
      end
    end
  end
end
