# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetMessagesUploadServerResponse < Vk::Schema::Response
          # @return [API::Photos::PhotoUpload] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Photos::PhotoUpload].optional.default(nil)
        end
      end
    end
  end
end
