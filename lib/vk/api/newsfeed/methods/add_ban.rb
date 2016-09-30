# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Prevents news from specified users and communities from appearing in the current user's newsfeed.
        class AddBan < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.addBan'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :user_ids @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :group_ids @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Newsfeed::Methods::AddBan]

          # @!group Arguments

          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_ids, API::Types::Coercible::Array.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :group_ids, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
