# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Audio
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AudioUploadResponse < Vk::Schema::Model
          # @return [String] Redirect URL
          attribute :redirect, Schema::Types::Coercible::String.optional
          # @return [Integer] Upload server number
          attribute :server, Schema::Types::Coercible::Int.optional
          # @return [String] Uploaded aduio data
          attribute :audio, Schema::Types::Coercible::String.optional
          # @return [String] Uploading hash
          attribute :hash, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
