# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class StartResponse < Vk::Schema::Response
          # @return [API::Leads::Start] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Leads::Start].optional
        end
      end
    end
  end
end
