# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AudioFull < API::Audio::Audio
        # @return [Integer] Duration in seconds
        attribute :duration, API::Types::Coercible::Int.optional
        # @return [Integer] Date when uploaded
        attribute :date, API::Types::Coercible::Int.optional
        # @return [Integer] Album ID
        attribute :album_id, API::Types::Coercible::Int.optional
        # @return [Integer] Lyrics ID
        attribute :lyrics_id, API::Types::Coercible::Int.optional
        # @return [Integer] Genre ID
        attribute :genre_id, API::Types::Coercible::Int.optional
        # @return [API::Base::BoolInt] Information whether the audio is hidden from search
        attribute :no_search, API::Base::BoolInt.optional
      end
    end
  end
end
