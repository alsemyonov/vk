# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarkAsViewedResponse < Vk::Schema::Response
          # @return [API::Base::BoolInt] Result
          attribute :response, API::Base::BoolInt.optional.default(nil)
        end
      end
    end
  end
end
