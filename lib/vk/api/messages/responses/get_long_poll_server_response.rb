# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetLongPollServerResponse < Vk::Schema::Response
          # @return [API::Messages::LongpollParams] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Messages::LongpollParams].optional.default(nil)
        end
      end
    end
  end
end
