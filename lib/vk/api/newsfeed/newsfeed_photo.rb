# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class NewsfeedPhoto < API::Photos::Photo
        # @return [API::Base::Likes] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :likes, Dry::Types[API::Base::Likes].optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :comments, API::Types::Coercible::Hash.optional
        # @return [API::Base::BoolInt] Information whether current user can comment the photo
        attribute :can_comment, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can repost the photo
        attribute :can_repost, API::Base::BoolInt.optional
      end
    end
  end
end
