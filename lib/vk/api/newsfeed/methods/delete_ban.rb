# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Allows news from previously banned users and communities to be shown in the current user's newsfeed.
        class DeleteBan < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.deleteBan'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :user_ids @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :group_ids @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Newsfeed::Methods::DeleteBan]

          # @!group Arguments

          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_ids, API::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :group_ids, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
