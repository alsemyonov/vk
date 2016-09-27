# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Video
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class SaveResult < Vk::Schema::Model
          # @return [String] URL for the video uploading
          attribute :upload_url, Schema::Types::Coercible::String.optional
          # @return [Integer] Video ID
          attribute :video_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Video owner ID
          attribute :owner_id, Schema::Types::Coercible::Int.optional
          # @return [String] Video title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Video description
          attribute :description, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
