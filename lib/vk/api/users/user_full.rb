# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserFull < API::Users::User
        # @return [String] User nickname
        attribute :nickname, API::Types::Coercible::String.optional
        # @return [String] User maiden name
        attribute :maiden_name, API::Types::Coercible::String.optional
        # @return [String] Domain name of the user's page
        attribute :domain, API::Types::Coercible::String.optional
        # @return [String] User's date of birth
        attribute :bdate, API::Types::Coercible::String.optional
        # @return [API::Base::Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :city, Dry::Types[API::Base::Object].optional
        # @return [API::Base::Country] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :country, Dry::Types[API::Base::Country].optional
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
        # @return [API::Base::BoolInt] Information whether the user specified his phone number
        attribute :has_mobile, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether the user is a friend of current user
        attribute :is_friend, API::Base::BoolInt.optional
        # @return [Integer] Friend status for current user
        attribute :friend_status, API::Types::Coercible::Int.optional
        # @return [API::Base::BoolInt] Information whether current user can comment wall posts
        attribute :wall_comments, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can post on the user's wall
        attribute :can_post, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can see other users' audio on the wall
        attribute :can_see_all_posts, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can see the user's audio
        attribute :can_see_audio, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can write private message
        attribute :can_write_private_message, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether current user can send a friend request
        attribute :can_send_friend_request, API::Base::BoolInt.optional
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
        # @return [API::Audio::AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :status_audio, Dry::Types[API::Audio::AudioFull].optional
        # @return [String] User's status
        attribute :status, API::Types::Coercible::String.optional
        # @return [String] User's status
        attribute :activity, API::Types::Coercible::String.optional
        # @return [API::Users::LastSeen] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :last_seen, Dry::Types[API::Users::LastSeen].optional
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :exports, API::Types::Coercible::Hash.optional
        # @return [API::Users::CropPhoto] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :crop_photo, Dry::Types[API::Users::CropPhoto].optional
        # @return [API::Base::BoolInt] Information whether the user is verified
        attribute :verified, API::Base::BoolInt.optional
        # @return [Integer] Number of user's followers
        attribute :followers_count, API::Types::Coercible::Int.optional
        # @return [API::Base::BoolInt] Information whether current user is in the requested user's blacklist.
        attribute :blacklisted, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether the requested user is in current user's blacklist
        attribute :blacklisted_by_me, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether the requested user is in faves of current user
        attribute :is_favorite, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether the requested user is hidden from current user's newsfeed
        attribute :is_hidden_from_feed, API::Base::BoolInt.optional
        # @return [Integer] Number of common friends with current user
        attribute :common_count, API::Types::Coercible::Int.optional
        # @return [API::Users::Occupation] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :occupation, Dry::Types[API::Users::Occupation].optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :career, API::Types::Coercible::Array.member(API::Users::Career).optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :military, API::Types::Coercible::Array.member(API::Users::Military).optional
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
        # @return [API::Users::UserMin] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :relation_partner, Dry::Types[API::Users::UserMin].optional
        # @return [API::Users::Personal] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :personal, Dry::Types[API::Users::Personal].optional
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
        attribute :universities, API::Types::Coercible::Array.member(API::Users::University).optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :schools, API::Types::Coercible::Array.member(API::Users::School).optional
        # @return [String] About me field
        attribute :about, API::Types::Coercible::String.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :relatives, API::Types::Coercible::Array.member(API::Users::Relative).optional
        # @return [String] Favorite quotes
        attribute :quotes, API::Types::Coercible::String.optional
      end
    end
  end
end
