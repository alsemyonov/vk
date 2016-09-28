# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class VideoTag < Vk::Schema::Object
        # @return [Integer] Tagged user ID
        attribute :user_id, API::Types::Coercible::Int
        # @return [Integer] Tag ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] ID of the tag creator
        attribute :placer_id, API::Types::Coercible::Int
        # @return [String] Tag description
        attribute :tagged_name, API::Types::Coercible::String
        # @return [Integer] Date when tag has been added in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [API::Base::BoolInt] Information whether tha tag is reviewed
        attribute :viewed, API::Base::BoolInt
      end
    end
  end
end
