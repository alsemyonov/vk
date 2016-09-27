# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Audio
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AudioFull < Model::Audio::Audio
          # @return [Integer] Duration in seconds
          attribute :duration, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when uploaded
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Album ID
          attribute :album_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Lyrics ID
          attribute :lyrics_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Genre ID
          attribute :genre_id, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether the audio is hidden from search
          attribute :no_search, Schema::Types::BaseBoolInt.optional
        end
      end
    end
  end
end
