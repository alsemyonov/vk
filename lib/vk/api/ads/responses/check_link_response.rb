# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CheckLinkResponse < Vk::Schema::Response
          # @return [API::Ads::LinkStatus] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Ads::LinkStatus].optional.default(nil)
        end
      end
    end
  end
end
