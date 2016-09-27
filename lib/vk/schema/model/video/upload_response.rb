# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Video
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UploadResponse < Vk::Schema::Model
          # @return [Integer] Video size
          attribute :size, Schema::Types::Coercible::Int.optional
          # @return [Integer] Video ID
          attribute :video_id, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
