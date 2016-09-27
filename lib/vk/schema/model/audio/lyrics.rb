# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Audio
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Lyrics < Vk::Schema::Model
          # @return [Integer] Lyrics ID
          attribute :lyrics_id, Schema::Types::Coercible::Int
          # @return [String] Lyrics text
          attribute :text, Schema::Types::Coercible::String
        end
      end
    end
  end
end
