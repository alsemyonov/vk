# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Audio
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AudioAlbum < Vk::Schema::Model
          # @return [Integer] Album ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Album owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Album title
          attribute :title, Schema::Types::Coercible::String
        end
      end
    end
  end
end
