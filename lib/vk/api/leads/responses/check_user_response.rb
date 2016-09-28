# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CheckUserResponse < Vk::Schema::Response
          # @return [API::Leads::Checked] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Leads::Checked].optional
        end
      end
    end
  end
end
