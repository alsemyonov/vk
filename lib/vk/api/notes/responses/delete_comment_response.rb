# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DeleteCommentResponse < Vk::Schema::Response
          # @return [API::Base::OkResponse] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, API::Base::OkResponse.optional.default(nil)
        end
      end
    end
  end
end
