# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Returns a list of posts from user or community walls by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'wall.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :posts User or community IDs and post IDs, separated by underscores.  Use a negative value to designate a community ID.  Example:; "93388_21539,93388_20904,2943_4276,-1_1"
          #   @option arguments [Boolean] :extended '1' — to return user and community objects needed to display posts; '0' — no additional fields are returned (default)
          #   @option arguments [Integer] :copy_history_depth Sets the number of parent elements to include in the array 'copy_history' that is returned if the post is a repost from another wall.
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Wall::Methods::GetById]

          # @!group Arguments

          # @return [Array] User or community IDs and post IDs, separated by underscores.  Use a negative value to designate a community ID.  Example:; "93388_21539,93388_20904,2943_4276,-1_1"
          attribute :posts, API::Types::Coercible::Array.member(API::Types::Coercible::String)
          # @return [Boolean] '1' — to return user and community objects needed to display posts; '0' — no additional fields are returned (default)
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] Sets the number of parent elements to include in the array 'copy_history' that is returned if the post is a repost from another wall.
          attribute :copy_history_depth, API::Types::Coercible::Int.optional.default(2)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
