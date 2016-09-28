# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns a list of users on a community blacklist.
        class GetBanned < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getBanned'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of users.
          #   @option arguments [Integer] :count Number of users to return.
          #   @option arguments [Array] :fields @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Groups::Methods::GetBanned]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of users.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of users to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :fields, API::Types::Coercible::Array.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
