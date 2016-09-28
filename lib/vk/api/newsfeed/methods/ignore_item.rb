# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Hides an item from the newsfeed.
        class IgnoreItem < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.ignoreItem'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :type Item type. Possible values:; *'wall' – post on the wall;; *'tag' – tag on a photo;; *'profilephoto' – profile photo;; *'video' – video;; *'audio' – audio.
          #   @option arguments [Integer] :owner_id Item owner's identifier (user or community); "Note that community id must be negative. ; 'owner_id=1' – user ; 'owner_id=-1' – community "
          #   @option arguments [Integer] :item_id Item identifier
          #   @return [Newsfeed::Methods::IgnoreItem]

          # @!group Arguments

          # @return [String] Item type. Possible values:; *'wall' – post on the wall;; *'tag' – tag on a photo;; *'profilephoto' – profile photo;; *'video' – video;; *'audio' – audio.
          attribute :type, API::Types::Coercible::String.optional
          # @return [Integer] Item owner's identifier (user or community); "Note that community id must be negative. ; 'owner_id=1' – user ; 'owner_id=-1' – community "
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Item identifier
          attribute :item_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
