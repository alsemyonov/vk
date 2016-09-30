# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DeleteCommentResponse < Vk::Schema::Response
          # @return [API::Base::BoolInt] Returns 1 if request has been processed successfully (0 if the comment is not found)
          attribute :response, API::Base::BoolInt.optional.default(nil)
        end
      end
    end
  end
end
