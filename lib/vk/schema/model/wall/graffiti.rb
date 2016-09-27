# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Graffiti < Vk::Schema::Model
          # @return [Integer] Graffiti ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Graffiti owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int.optional
          # @return [String] URL of the preview image with 200 px in width
          attribute :photo_200, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 586 px in width
          attribute :photo_586, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
