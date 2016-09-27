# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Audio
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Audio < Vk::Schema::Model
          # @return [Integer] Audio ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Audio owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Artist name
          attribute :artist, Schema::Types::Coercible::String
          # @return [String] Title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] URL of mp3 file
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [String] Access key for the audio
          attribute :access_key, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
