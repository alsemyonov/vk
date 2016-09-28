# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserXtrBanInfo < Vk::Schema::Object
        # @return [Integer] User ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] User first name
        attribute :first_name, API::Types::Coercible::String
        # @return [String] User last name
        attribute :last_name, API::Types::Coercible::String
        # @return [String] Returns if a profile is deleted or blocked
        attribute :deactivated, API::Types::Coercible::String.optional
        # @return [Integer] Returns if a profile is hidden.
        attribute :hidden, API::Types::Coercible::Int.optional
        # @return [Integer] User sex
        attribute :sex, API::Types::Coercible::Int.optional
        # @return [String] Domain name of the user's page
        attribute :screen_name, API::Types::Coercible::String.optional
        # @return [String] URL of square photo of the user with 50 pixels in width
        attribute :photo_50, API::Types::Coercible::String.optional
        # @return [String] URL of square photo of the user with 100 pixels in width
        attribute :photo_100, API::Types::Coercible::String.optional
        # @return [Integer] Information whether the user is online
        attribute :online, API::Types::Coercible::Int.optional
        # @return [String] User nickname
        attribute :nickname, API::Types::Coercible::String.optional
        # @return [String] User maiden name
        attribute :maiden_name, API::Types::Coercible::String.optional
        # @return [String] Domain name of the user's page
        attribute :domain, API::Types::Coercible::String.optional
        # @return [String] User's date of birth
        attribute :bdate, API::Types::Coercible::String.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :city, API::Types::Coercible::Hash.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :country, API::Types::Coercible::Hash.optional
        # @return [Integer] User's timezone
        attribute :timezone, API::Types::Coercible::Int.optional
        # @return [String] URL of square photo of the user with 200 pixels in width
        attribute :photo_200, API::Types::Coercible::String.optional
        # @return [String] URL of square photo of the user with maximum width
        attribute :photo_max, API::Types::Coercible::String.optional
        # @return [String] URL of user's photo with 200 pixels in width
        attribute :photo_200_orig, API::Types::Coercible::String.optional
        # @return [String] URL of user's photo with 400 pixels in width
        attribute :photo_400_orig, API::Types::Coercible::String.optional
        # @return [String] URL of user's photo of maximum size
        attribute :photo_max_orig, API::Types::Coercible::String.optional
        # @return [String] ID of the user's main photo
        attribute :photo_id, API::Types::Coercible::String.optional
        # @return [Integer] Information whether the user has main photo
        attribute :has_photo, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether the user specified his phone number
        attribute :has_mobile, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether the user is a friend of current user
        attribute :is_friend, API::Types::Coercible::Int.optional
        # @return [Integer] Friend status for current user
        attribute :friend_status, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user can comment wall posts
        attribute :wall_comments, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user can post on the user's wall
        attribute :can_post, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user can see other users' audio on the wall
        attribute :can_see_all_posts, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user can see the user's audio
        attribute :can_see_audio, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user can write private message
        attribute :can_write_private_message, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user can send a friend request
        attribute :can_send_friend_request, API::Types::Coercible::Int.optional
        # @return [String] Information whether current user can see
        attribute :mobile_phone, API::Types::Coercible::String.optional
        # @return [String] User's mobile phone number
        attribute :home_phone, API::Types::Coercible::String.optional
        # @return [String] User's Skype nickname
        attribute :skype, API::Types::Coercible::String.optional
        # @return [String] User's Facebook account
        attribute :facebook, API::Types::Coercible::String.optional
        # @return [String] User's Facebook name
        attribute :facebook_name, API::Types::Coercible::String.optional
        # @return [String] User's Twitter account
        attribute :twitter, API::Types::Coercible::String.optional
        # @return [String] User's Livejournal account
        attribute :livejournal, API::Types::Coercible::String.optional
        # @return [String] User's Instagram account
        attribute :instagram, API::Types::Coercible::String.optional
        # @return [String] User's website
        attribute :site, API::Types::Coercible::String.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :status_audio, API::Types::Coercible::Hash.optional
        # @return [String] User's status
        attribute :status, API::Types::Coercible::String.optional
        # @return [String] User's status
        attribute :activity, API::Types::Coercible::String.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :last_seen, API::Types::Coercible::Hash.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :exports, API::Types::Coercible::Array.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :crop_photo, API::Types::Coercible::Hash.optional
        # @return [Integer] Information whether the user is verified
        attribute :verified, API::Types::Coercible::Int.optional
        # @return [Integer] Number of user's followers
        attribute :followers_count, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether current user is in the requested user's blacklist.
        attribute :blacklisted, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether the requested user is in current user's blacklist
        attribute :blacklisted_by_me, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether the requested user is in faves of current user
        attribute :is_favorite, API::Types::Coercible::Int.optional
        # @return [Integer] Information whether the requested user is hidden from current user's newsfeed
        attribute :is_hidden_from_feed, API::Types::Coercible::Int.optional
        # @return [Integer] Number of common friends with current user
        attribute :common_count, API::Types::Coercible::Int.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :occupation, API::Types::Coercible::Hash.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :career, API::Types::Coercible::Array.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :military, API::Types::Coercible::Array.optional
        # @return [Integer] University ID
        attribute :university, API::Types::Coercible::Int.optional
        # @return [String] University name
        attribute :university_name, API::Types::Coercible::String.optional
        # @return [Integer] Faculty ID
        attribute :faculty, API::Types::Coercible::Int.optional
        # @return [String] Faculty name
        attribute :faculty_name, API::Types::Coercible::String.optional
        # @return [Integer] Graduation year
        attribute :graduation, API::Types::Coercible::Int.optional
        # @return [String] Education form
        attribute :education_form, API::Types::Coercible::String.optional
        # @return [String] User's education status
        attribute :education_status, API::Types::Coercible::String.optional
        # @return [String] User hometown
        attribute :home_town, API::Types::Coercible::String.optional
        # @return [Integer] User relationship status
        attribute :relation, API::Types::Coercible::Int.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :relation_partner, API::Types::Coercible::Hash.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :personal, API::Types::Coercible::Hash.optional
        # @return [String] User's interests
        attribute :interests, API::Types::Coercible::String.optional
        # @return [String] User's favorite music
        attribute :music, API::Types::Coercible::String.optional
        # @return [String] User's activities
        attribute :activities, API::Types::Coercible::String.optional
        # @return [String] User's favorite movies
        attribute :movies, API::Types::Coercible::String.optional
        # @return [String] User's favorite tv shows
        attribute :tv, API::Types::Coercible::String.optional
        # @return [String] User's favorite books
        attribute :books, API::Types::Coercible::String.optional
        # @return [String] User's favorite games
        attribute :games, API::Types::Coercible::String.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :universities, API::Types::Coercible::Array.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :schools, API::Types::Coercible::Array.optional
        # @return [String] About me field
        attribute :about, API::Types::Coercible::String.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :relatives, API::Types::Coercible::Array.optional
        # @return [String] Favorite quotes
        attribute :quotes, API::Types::Coercible::String.optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :ban_info, API::Types::Coercible::Hash.optional
      end
    end
  end
end
