# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Graffiti < Vk::Schema::Object
        # @return [Integer] Graffiti ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Graffiti owner's ID
        attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] URL of the preview image with 200 px in width
        attribute :photo_200, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the preview image with 586 px in width
        attribute :photo_586, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
