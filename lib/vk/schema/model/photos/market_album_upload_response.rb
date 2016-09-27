# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarketAlbumUploadResponse < Vk::Schema::Model
          # @return [Integer] Community ID
          attribute :gid, Schema::Types::Coercible::Int.optional
          # @return [Integer] Upload server number
          attribute :server, Schema::Types::Coercible::Int.optional
          # @return [String] Uploaded photo data
          attribute :photo, Schema::Types::Coercible::String.optional
          # @return [String] Uploading hash
          attribute :hash, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
