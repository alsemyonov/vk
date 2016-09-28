# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class NewsfeedItem < Vk::Schema::Object
        # @return [String] Item type
        attribute :type, API::Types::Coercible::String.optional
        # @return [Integer] Item source ID
        attribute :source_id, API::Types::Coercible::Int.optional
        # @return [Integer] Date when item has been added in Unixtime
        attribute :date, API::Types::Coercible::Int.optional
      end
    end
  end
end
