# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Market
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MarketAlbum < Vk::Schema::Model
          # @return [Integer] Market album ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Market album owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Market album title
          attribute :title, Schema::Types::Coercible::String
          # @return [Integer] Items number
          attribute :count, Schema::Types::Coercible::Int
          # @return [Integer] Date when album has been updated last time in Unixtime
          attribute :updated_time, Schema::Types::Coercible::Int
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
        end
      end
    end
  end
end
