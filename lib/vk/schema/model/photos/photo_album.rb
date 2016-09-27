# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Photos
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PhotoAlbum < Vk::Schema::Model
          # @return [Integer] Photo album ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :thumb, Dry::Types[Model::Photos::Photo].optional
          # @return [Integer] Album owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Photo album title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] Photo album description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when the album has been created in Unixtime
          attribute :created, Schema::Types::Coercible::Int
          # @return [Integer] Date when the album has been updated last time in Unixtime
          attribute :updated, Schema::Types::Coercible::Int
          # @return [Integer] Photos number
          attribute :size, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
