# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Audio < Vk::Schema::Object
        # @return [Integer] Audio ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Audio owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Artist name
        attribute :artist, API::Types::Coercible::String
        # @return [String] Title
        attribute :title, API::Types::Coercible::String
        # @return [String] URL of mp3 file
        attribute :url, API::Types::Coercible::String.optional
        # @return [String] Access key for the audio
        attribute :access_key, API::Types::Coercible::String.optional
      end
    end
  end
end
