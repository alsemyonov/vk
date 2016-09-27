# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Video
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class VideoTag < Vk::Schema::Model
          # @return [Integer] Tagged user ID
          attribute :user_id, Schema::Types::Coercible::Int
          # @return [Integer] Tag ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] ID of the tag creator
          attribute :placer_id, Schema::Types::Coercible::Int
          # @return [String] Tag description
          attribute :tagged_name, Schema::Types::Coercible::String
          # @return [Integer] Date when tag has been added in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [BaseBoolInt] Information whether tha tag is reviewed
          attribute :viewed, Schema::Types::BaseBoolInt
        end
      end
    end
  end
end
