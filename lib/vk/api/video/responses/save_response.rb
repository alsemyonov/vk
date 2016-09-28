# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class SaveResponse < Vk::Schema::Response
          # @return [API::Video::SaveResult] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Video::SaveResult].optional
        end
      end
    end
  end
end
