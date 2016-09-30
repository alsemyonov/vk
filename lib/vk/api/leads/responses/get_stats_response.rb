# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetStatsResponse < Vk::Schema::Response
          # @return [API::Leads::Lead] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Leads::Lead].optional.default(nil)
        end
      end
    end
  end
end
