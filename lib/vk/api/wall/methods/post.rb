# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Adds a new post on a user wall or community wall. Can also be used to publish suggested or scheduled posts.
        class Post < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.post'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.
          #   @option arguments [Boolean] :friends_only '1' — post will be available to friends only; '0' — post will be available to all users (default)
          #   @option arguments [Boolean] :from_group For a community:; '1' — post will be published by the community; '0' — post will be published by the user (default)
          #   @option arguments [String] :message (Required if 'attachments' is not set.) Text of the post.
          #   @option arguments [Array] :attachments (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; 'page' — wiki-page; 'note' — note; 'poll' — poll; 'album' — photo album; '<owner_id>' — ID of the media application owner. ; '<media_id>' — Media application ID.; ; Example:; "photo100172_166443618,photo66748_265827614"; May contain a link to an external page to include in the post. Example:; "photo66748_265827614,http://habrahabr.ru"; "NOTE: If more than one link is being attached, an error will be thrown."
          #   @option arguments [String, 'facebook'] :services List of services or websites the update will be exported to, if the user has so requested. Sample values: 'twitter', 'facebook'.
          #   @option arguments [Boolean] :signed Only for posts in communities with 'from_group' set to '1':; '1' — post will be signed with the name of the posting user; '0' — post will not be signed (default)
          #   @option arguments [Integer] :publish_date Publication date (in Unix time). If used, posting will be delayed until the set time.
          #   @option arguments [Number] :lat Geographical latitude of a check-in, in degrees (from -90 to 90).
          #   @option arguments [Number] :long Geographical longitude of a check-in, in degrees (from -180 to 180).
          #   @option arguments [Integer] :place_id ID of the location where the user was tagged.
          #   @option arguments [Integer] :post_id Post ID. Used for publishing of scheduled and suggested posts.
          #   @option arguments [String] :guid @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :mark_as_ads @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Wall::Methods::Post]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' — post will be available to friends only; '0' — post will be available to all users (default)
          attribute :friends_only, API::Types::Bool.optional
          # @return [Boolean] For a community:; '1' — post will be published by the community; '0' — post will be published by the user (default)
          attribute :from_group, API::Types::Bool.optional
          # @return [String] (Required if 'attachments' is not set.) Text of the post.
          attribute :message, API::Types::Coercible::String.optional
          # @return [Array] (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; 'page' — wiki-page; 'note' — note; 'poll' — poll; 'album' — photo album; '<owner_id>' — ID of the media application owner. ; '<media_id>' — Media application ID.; ; Example:; "photo100172_166443618,photo66748_265827614"; May contain a link to an external page to include in the post. Example:; "photo66748_265827614,http://habrahabr.ru"; "NOTE: If more than one link is being attached, an error will be thrown."
          attribute :attachments, API::Types::Coercible::Array.optional
          # @return [String, 'facebook'] List of services or websites the update will be exported to, if the user has so requested. Sample values: 'twitter', 'facebook'.
          attribute :services, API::Types::Coercible::String.optional
          # @return [Boolean] Only for posts in communities with 'from_group' set to '1':; '1' — post will be signed with the name of the posting user; '0' — post will not be signed (default)
          attribute :signed, API::Types::Bool.optional
          # @return [Integer] Publication date (in Unix time). If used, posting will be delayed until the set time.
          attribute :publish_date, API::Types::Coercible::Int.optional
          # @return [Number] Geographical latitude of a check-in, in degrees (from -90 to 90).
          attribute :lat, API::Types::Coercible::Int.optional
          # @return [Number] Geographical longitude of a check-in, in degrees (from -180 to 180).
          attribute :long, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the location where the user was tagged.
          attribute :place_id, API::Types::Coercible::Int.optional
          # @return [Integer] Post ID. Used for publishing of scheduled and suggested posts.
          attribute :post_id, API::Types::Coercible::Int.optional
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :guid, API::Types::Coercible::String.optional
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :mark_as_ads, API::Types::Bool.optional
        end
      end
    end
  end
end
