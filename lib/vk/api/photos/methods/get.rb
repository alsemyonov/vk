# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of a user's or community's photos.
        class Get < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'photos.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photos. Use a negative value to designate a community ID.
          #   @option arguments [String] :album_id Photo album ID. To return information about photos from service albums, use the following string values: 'profile, wall, saved'.
          #   @option arguments [Array] :photo_ids Photo IDs.
          #   @option arguments [Boolean] :rev Sort order:; '1' — reverse chronological; '0' — chronological
          #   @option arguments [Boolean] :extended '1' — to return additional 'likes', 'comments', and 'tags' fields; '0' — (default)
          #   @option arguments [String] :feed_type Type of feed obtained in 'feed' field of the method.
          #   @option arguments [Integer] :feed unixtime, that can be obtained with  method in date field to get all photos uploaded by the user on a specific day, or photos the user has been tagged on. Also, 'uid' parameter of the user the event happened with shall be specified.
          #   @option arguments [Boolean] :photo_sizes '1' — to return photo sizes in a
          #   @option arguments [Integer] :offset @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :count @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::Get]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photos. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Photo album ID. To return information about photos from service albums, use the following string values: 'profile, wall, saved'.
          attribute :album_id, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] Photo IDs.
          attribute :photo_ids, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Boolean] Sort order:; '1' — reverse chronological; '0' — chronological
          attribute :rev, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return additional 'likes', 'comments', and 'tags' fields; '0' — (default)
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
          # @return [String] Type of feed obtained in 'feed' field of the method.
          attribute :feed_type, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] unixtime, that can be obtained with  method in date field to get all photos uploaded by the user on a specific day, or photos the user has been tagged on. Also, 'uid' parameter of the user the event happened with shall be specified.
          attribute :feed, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return photo sizes in a
          attribute :photo_sizes, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
