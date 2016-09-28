# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class SaveResult < Vk::Schema::Object
        # @return [String] URL for the video uploading
        attribute :upload_url, API::Types::Coercible::String.optional
        # @return [Integer] Video ID
        attribute :video_id, API::Types::Coercible::Int.optional
        # @return [Integer] Video owner ID
        attribute :owner_id, API::Types::Coercible::Int.optional
        # @return [String] Video title
        attribute :title, API::Types::Coercible::String.optional
        # @return [String] Video description
        attribute :description, API::Types::Coercible::String.optional
      end
    end
  end
end
