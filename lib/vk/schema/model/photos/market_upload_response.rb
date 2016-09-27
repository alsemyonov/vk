# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarketUploadResponse < Vk::Schema::Model
          # @return [Integer] Community ID
          attribute :group_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Upload server number
          attribute :server, Schema::Types::Coercible::Int.optional
          # @return [String] Uploaded photo data
          attribute :photo, Schema::Types::Coercible::String.optional
          # @return [String] Uploading hash
          attribute :hash, Schema::Types::Coercible::String.optional
          # @return [String] Crop data
          attribute :crop_data, Schema::Types::Coercible::String.optional
          # @return [String] Crop hash
          attribute :crop_hash, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
