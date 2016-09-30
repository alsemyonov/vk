# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WallUploadResponse < Vk::Schema::Object
        # @return [Integer] Upload server number
        attribute :server, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Uploaded photo data
        attribute :photo, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Uploading hash
        attribute :hash, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
