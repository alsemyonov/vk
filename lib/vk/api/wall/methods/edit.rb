# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Edits a post on a user wall or community wall.
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id User ID or community ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :post_id Post ID.
          #   @option arguments [Boolean] :friends_only (Applies only when editing a scheduled post.); '1' — post will be available to friends only; '0' — post will be available to all users (default)
          #   @option arguments [String] :message (Required if 'attachments' is not set.) Text of the post.
          #   @option arguments [Array] :attachments (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media application owner.; '<media_id>' — Media application ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"; May contain a link to an external page to include in the post. Example:; "photo66748_265827614,http://habrahabr.ru"; "NOTE: If more than one link is being attached, an error is thrown."
          #   @option arguments [String, 'facebook'] :services (Applies only to a scheduled post.) List of services or websites where status will be updated, if the user has so requested. Sample values: 'twitter', 'facebook'.
          #   @option arguments [Boolean] :signed (Applies only to a post that was created "as community" on a community wall.); '1' — to add the signature of the user who created the post
          #   @option arguments [Integer] :publish_date (Applies only to a scheduled post.) Publication date (in Unix time). If used, posting will be delayed until the set time.
          #   @option arguments [Number] :lat Geographical latitude of the check-in, in degrees (from -90 to 90).
          #   @option arguments [Number] :long Geographical longitude of the check-in, in degrees (from -180 to 180).
          #   @option arguments [Integer] :place_id ID of the location where the user was tagged.
          #   @option arguments [Boolean] :mark_as_ads @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Wall::Methods::Edit]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Post ID.
          attribute :post_id, API::Types::Coercible::Int
          # @return [Boolean] (Applies only when editing a scheduled post.); '1' — post will be available to friends only; '0' — post will be available to all users (default)
          attribute :friends_only, API::Types::Form::Bool.optional.default(nil)
          # @return [String] (Required if 'attachments' is not set.) Text of the post.
          attribute :message, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] (Required if 'message' is not set.) List of objects attached to the post, in the following format:; "<owner_id>_<media_id>,<owner_id>_<media_id>"; '' — Type of media attachment:; 'photo' — photo; 'video' — video; 'audio' — audio; 'doc' — document; '<owner_id>' — ID of the media application owner.; '<media_id>' — Media application ID. ; ; Example:; "photo100172_166443618,photo66748_265827614"; May contain a link to an external page to include in the post. Example:; "photo66748_265827614,http://habrahabr.ru"; "NOTE: If more than one link is being attached, an error is thrown."
          attribute :attachments, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [String, 'facebook'] (Applies only to a scheduled post.) List of services or websites where status will be updated, if the user has so requested. Sample values: 'twitter', 'facebook'.
          attribute :services, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] (Applies only to a post that was created "as community" on a community wall.); '1' — to add the signature of the user who created the post
          attribute :signed, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] (Applies only to a scheduled post.) Publication date (in Unix time). If used, posting will be delayed until the set time.
          attribute :publish_date, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical latitude of the check-in, in degrees (from -90 to 90).
          attribute :lat, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical longitude of the check-in, in degrees (from -180 to 180).
          attribute :long, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the location where the user was tagged.
          attribute :place_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :mark_as_ads, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
