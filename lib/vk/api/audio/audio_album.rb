# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AudioAlbum < Vk::Schema::Object
        # @return [Integer] Album ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Album owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Album title
        attribute :title, API::Types::Coercible::String
      end
    end
  end
end
