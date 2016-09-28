# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Unsubscribes the current user from specified newsfeeds.
        class Unsubscribe < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.unsubscribe'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :type Type of object from which to unsubscribe:; 'note' — note; 'photo' — photo; 'post' — post on user wall or community wall; 'topic' — topic; 'video' — video
          #   @option arguments [Integer] :owner_id Object owner ID.
          #   @option arguments [Integer] :item_id Object ID.
          #   @return [Newsfeed::Methods::Unsubscribe]

          # @!group Arguments

          # @return [String] Type of object from which to unsubscribe:; 'note' — note; 'photo' — photo; 'post' — post on user wall or community wall; 'topic' — topic; 'video' — video
          attribute :type, API::Types::Coercible::String.optional
          # @return [Integer] Object owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Object ID.
          attribute :item_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
