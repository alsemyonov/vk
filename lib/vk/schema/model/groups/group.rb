# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Group < Vk::Schema::Model
          # @return [String] Community ID
          attribute :id, Schema::Types::Coercible::String.optional
          # @return [String] Community name
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [String] Domain of the community page
          attribute :screen_name, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether community is closed
          attribute :is_closed, Schema::Types::Coercible::Int.optional
          # @return [String] Community type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether current user is administrator
          attribute :is_admin, Schema::Types::Coercible::Int.optional
          # @return [Integer] Level of current user's credentials as manager
          attribute :admin_level, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether current user is member
          attribute :is_member, Schema::Types::BaseBoolInt.optional
          # @return [String] URL of square photo of the community with 50 pixels in width
          attribute :photo_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of square photo of the community with 100 pixels in width
          attribute :photo_100, Schema::Types::Coercible::String.optional
          # @return [String] URL of square photo of the community with 200 pixels in width
          attribute :photo_200, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
