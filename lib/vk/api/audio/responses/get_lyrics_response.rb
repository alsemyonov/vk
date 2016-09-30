# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetLyricsResponse < Vk::Schema::Response
          # @return [API::Audio::Lyrics] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Audio::Lyrics].optional.default(nil)
        end
      end
    end
  end
end
