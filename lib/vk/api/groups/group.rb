# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Group < Vk::Schema::Object
        # @return [String] Community ID
        attribute :id, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Community name
        attribute :name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Domain of the community page
        attribute :screen_name, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Information whether community is closed
        attribute :is_closed, API::Types::Coercible::Int.enum(0, 1, 2).optional.default(nil)
        # @return [String] Community type
        attribute :type, API::Types::Coercible::String.enum("group", "page", "event").optional.default(nil)
        # @return [Integer] Information whether current user is administrator
        attribute :is_admin, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Level of current user's credentials as manager
        attribute :admin_level, API::Types::Coercible::Int.enum(1, 2, 3).optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user is member
        attribute :is_member, API::Base::BoolInt.optional.default(nil)
        # @return [String] URL of square photo of the community with 50 pixels in width
        attribute :photo_50, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of square photo of the community with 100 pixels in width
        attribute :photo_100, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of square photo of the community with 200 pixels in width
        attribute :photo_200, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
