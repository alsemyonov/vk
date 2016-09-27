# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class NewsfeedPhoto < Model::Photos::Photo
          # @return [Likes] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :likes, Dry::Types[Model::Base::Likes].optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :comments, Schema::Types::Coercible::Hash.optional
          # @return [BaseBoolInt] Information whether current user can comment the photo
          attribute :can_comment, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user can repost the photo
          attribute :can_repost, Schema::Types::BaseBoolInt.optional
        end
      end
    end
  end
end
