# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetFloodStatsResponse < Vk::Schema::Response
          # @return [API::Ads::FloodStats] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Ads::FloodStats].optional
        end
      end
    end
  end
end
