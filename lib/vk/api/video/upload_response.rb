# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UploadResponse < Vk::Schema::Object
        # @return [Integer] Video size
        attribute :size, API::Types::Coercible::Int.optional
        # @return [Integer] Video ID
        attribute :video_id, API::Types::Coercible::Int.optional
      end
    end
  end
end
