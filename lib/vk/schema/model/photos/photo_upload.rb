# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PhotoUpload < Vk::Schema::Model
          # @return [String] URL to upload photo
          attribute :upload_url, Schema::Types::Coercible::String
          # @return [Integer] Album ID
          attribute :album_id, Schema::Types::Coercible::Int
          # @return [Integer] User ID
          attribute :user_id, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
