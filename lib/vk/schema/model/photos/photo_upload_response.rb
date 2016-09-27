# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PhotoUploadResponse < Vk::Schema::Model
          # @return [Integer] Upload server number
          attribute :server, Schema::Types::Coercible::Int.optional
          # @return [String] Uploaded photos data
          attribute :photos_list, Schema::Types::Coercible::String.optional
          # @return [Integer] Album ID
          attribute :aid, Schema::Types::Coercible::Int.optional
          # @return [String] Uploading hash
          attribute :hash, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
