# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class PhotoUpload < Vk::Schema::Object
        # @return [String] URL to upload photo
        attribute :upload_url, API::Types::Coercible::String
        # @return [Integer] Album ID
        attribute :album_id, API::Types::Coercible::Int
        # @return [Integer] User ID
        attribute :user_id, API::Types::Coercible::Int
      end
    end
  end
end
