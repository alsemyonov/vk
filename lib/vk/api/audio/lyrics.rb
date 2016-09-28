# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Lyrics < Vk::Schema::Object
        # @return [Integer] Lyrics ID
        attribute :lyrics_id, API::Types::Coercible::Int
        # @return [String] Lyrics text
        attribute :text, API::Types::Coercible::String
      end
    end
  end
end
