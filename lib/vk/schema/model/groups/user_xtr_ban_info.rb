# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserXtrBanInfo < Vk::Schema::Model
          # @return [Integer] User ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] User first name
          attribute :first_name, Schema::Types::Coercible::String
          # @return [String] User last name
          attribute :last_name, Schema::Types::Coercible::String
          # @return [String] Returns if a profile is deleted or blocked
          attribute :deactivated, Schema::Types::Coercible::String.optional
          # @return [Integer] Returns if a profile is hidden.
          attribute :hidden, Schema::Types::Coercible::Int.optional
          # @return [Integer] User sex
          attribute :sex, Schema::Types::Coercible::Int.optional
          # @return [String] Domain name of the user's page
          attribute :screen_name, Schema::Types::Coercible::String.optional
          # @return [String] URL of square photo of the user with 50 pixels in width
          attribute :photo_50, Schema::Types::Coercible::String.optional
          # @return [String] URL of square photo of the user with 100 pixels in width
          attribute :photo_100, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether the user is online
          attribute :online, Schema::Types::Coercible::Int.optional
          # @return [String] User nickname
          attribute :nickname, Schema::Types::Coercible::String.optional
          # @return [String] User maiden name
          attribute :maiden_name, Schema::Types::Coercible::String.optional
          # @return [String] Domain name of the user's page
          attribute :domain, Schema::Types::Coercible::String.optional
          # @return [String] User's date of birth
          attribute :bdate, Schema::Types::Coercible::String.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :city, Schema::Types::Coercible::Hash.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :country, Schema::Types::Coercible::Hash.optional
          # @return [Integer] User's timezone
          attribute :timezone, Schema::Types::Coercible::Int.optional
          # @return [String] URL of square photo of the user with 200 pixels in width
          attribute :photo_200, Schema::Types::Coercible::String.optional
          # @return [String] URL of square photo of the user with maximum width
          attribute :photo_max, Schema::Types::Coercible::String.optional
          # @return [String] URL of user's photo with 200 pixels in width
          attribute :photo_200_orig, Schema::Types::Coercible::String.optional
          # @return [String] URL of user's photo with 400 pixels in width
          attribute :photo_400_orig, Schema::Types::Coercible::String.optional
          # @return [String] URL of user's photo of maximum size
          attribute :photo_max_orig, Schema::Types::Coercible::String.optional
          # @return [String] ID of the user's main photo
          attribute :photo_id, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether the user has main photo
          attribute :has_photo, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether the user specified his phone number
          attribute :has_mobile, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether the user is a friend of current user
          attribute :is_friend, Schema::Types::Coercible::Int.optional
          # @return [Integer] Friend status for current user
          attribute :friend_status, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can comment wall posts
          attribute :wall_comments, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can post on the user's wall
          attribute :can_post, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can see other users' audio on the wall
          attribute :can_see_all_posts, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can see the user's audio
          attribute :can_see_audio, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can write private message
          attribute :can_write_private_message, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can send a friend request
          attribute :can_send_friend_request, Schema::Types::Coercible::Int.optional
          # @return [String] Information whether current user can see
          attribute :mobile_phone, Schema::Types::Coercible::String.optional
          # @return [String] User's mobile phone number
          attribute :home_phone, Schema::Types::Coercible::String.optional
          # @return [String] User's Skype nickname
          attribute :skype, Schema::Types::Coercible::String.optional
          # @return [String] User's Facebook account
          attribute :facebook, Schema::Types::Coercible::String.optional
          # @return [String] User's Facebook name
          attribute :facebook_name, Schema::Types::Coercible::String.optional
          # @return [String] User's Twitter account
          attribute :twitter, Schema::Types::Coercible::String.optional
          # @return [String] User's Livejournal account
          attribute :livejournal, Schema::Types::Coercible::String.optional
          # @return [String] User's Instagram account
          attribute :instagram, Schema::Types::Coercible::String.optional
          # @return [String] User's website
          attribute :site, Schema::Types::Coercible::String.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :status_audio, Schema::Types::Coercible::Hash.optional
          # @return [String] User's status
          attribute :status, Schema::Types::Coercible::String.optional
          # @return [String] User's status
          attribute :activity, Schema::Types::Coercible::String.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :last_seen, Schema::Types::Coercible::Hash.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :exports, Schema::Types::Coercible::Array.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :crop_photo, Schema::Types::Coercible::Hash.optional
          # @return [Integer] Information whether the user is verified
          attribute :verified, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of user's followers
          attribute :followers_count, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user is in the requested user's blacklist.
          attribute :blacklisted, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether the requested user is in current user's blacklist
          attribute :blacklisted_by_me, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether the requested user is in faves of current user
          attribute :is_favorite, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether the requested user is hidden from current user's newsfeed
          attribute :is_hidden_from_feed, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of common friends with current user
          attribute :common_count, Schema::Types::Coercible::Int.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :occupation, Schema::Types::Coercible::Hash.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :career, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :military, Schema::Types::Coercible::Array.optional
          # @return [Integer] University ID
          attribute :university, Schema::Types::Coercible::Int.optional
          # @return [String] University name
          attribute :university_name, Schema::Types::Coercible::String.optional
          # @return [Integer] Faculty ID
          attribute :faculty, Schema::Types::Coercible::Int.optional
          # @return [String] Faculty name
          attribute :faculty_name, Schema::Types::Coercible::String.optional
          # @return [Integer] Graduation year
          attribute :graduation, Schema::Types::Coercible::Int.optional
          # @return [String] Education form
          attribute :education_form, Schema::Types::Coercible::String.optional
          # @return [String] User's education status
          attribute :education_status, Schema::Types::Coercible::String.optional
          # @return [String] User hometown
          attribute :home_town, Schema::Types::Coercible::String.optional
          # @return [Integer] User relationship status
          attribute :relation, Schema::Types::Coercible::Int.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :relation_partner, Schema::Types::Coercible::Hash.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :personal, Schema::Types::Coercible::Hash.optional
          # @return [String] User's interests
          attribute :interests, Schema::Types::Coercible::String.optional
          # @return [String] User's favorite music
          attribute :music, Schema::Types::Coercible::String.optional
          # @return [String] User's activities
          attribute :activities, Schema::Types::Coercible::String.optional
          # @return [String] User's favorite movies
          attribute :movies, Schema::Types::Coercible::String.optional
          # @return [String] User's favorite tv shows
          attribute :tv, Schema::Types::Coercible::String.optional
          # @return [String] User's favorite books
          attribute :books, Schema::Types::Coercible::String.optional
          # @return [String] User's favorite games
          attribute :games, Schema::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :universities, Schema::Types::Coercible::Array.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :schools, Schema::Types::Coercible::Array.optional
          # @return [String] About me field
          attribute :about, Schema::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :relatives, Schema::Types::Coercible::Array.optional
          # @return [String] Favorite quotes
          attribute :quotes, Schema::Types::Coercible::String.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :ban_info, Schema::Types::Coercible::Hash.optional
        end
      end
    end
  end
end
