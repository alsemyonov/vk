# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class NewsfeedItem < Vk::Schema::Model
          # @return [String] Item type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [Integer] Item source ID
          attribute :source_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when item has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
