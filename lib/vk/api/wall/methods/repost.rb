# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Reposts (copies) an object to a user wall or community wall.
        class Repost < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.repost'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :object ID of the object to be reposted on the wall. Example:; "wall66748_3675"
          #   @option arguments [String] :message Comment to be added along with the reposted object.
          #   @option arguments [Integer] :group_id Target community ID when reposting to a community.
          #   @option arguments [Boolean] :mark_as_ads @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Wall::Methods::Repost]

          # @!group Arguments

          # @return [String] ID of the object to be reposted on the wall. Example:; "wall66748_3675"
          attribute :object, API::Types::Coercible::String.optional
          # @return [String] Comment to be added along with the reposted object.
          attribute :message, API::Types::Coercible::String.optional
          # @return [Integer] Target community ID when reposting to a community.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :mark_as_ads, API::Types::Bool.optional
        end
      end
    end
  end
end
