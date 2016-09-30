# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class GroupFull < API::Groups::Group
        # @return [API::Groups::MarketInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :market, Dry::Types[API::Groups::MarketInfo].optional.default(nil)
        # @return [Integer] Current user's member status
        attribute :member_status, API::Types::Coercible::Int.enum(0, 1, 2, 3, 4, 5).optional.default(nil)
        # @return [API::Base::BoolInt] Information whether community is in faves
        attribute :is_favorite, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user is subscribed
        attribute :is_subscribed, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :city, Dry::Types[API::Base::Object].optional.default(nil)
        # @return [API::Base::Country] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :country, Dry::Types[API::Base::Country].optional.default(nil)
        # @return [API::Base::BoolInt] Information whether community is verified
        attribute :verified, API::Base::BoolInt.optional.default(nil)
        # @return [String] Community description
        attribute :description, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Community's main wiki page title
        attribute :wiki_page, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Community members number
        attribute :members_count, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Groups::CountersGroup] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :counters, Dry::Types[API::Groups::CountersGroup].optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can post on community's wall
        attribute :can_post, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can see all posts on community's wall
        attribute :can_see_all_posts, API::Base::BoolInt.optional.default(nil)
        # @return [String] Type of group, start date of event or category of public page
        attribute :activity, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Fixed post ID
        attribute :fixed_post, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can create topic
        attribute :can_create_topic, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can upload video
        attribute :can_upload_video, API::Base::BoolInt.optional.default(nil)
        # @return [String] Community status
        attribute :status, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Community's main photo album ID
        attribute :main_album_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :links, API::Types::Coercible::Array.member(API::Groups::LinksItem).optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :contacts, API::Types::Coercible::Array.member(API::Groups::ContactsItem).optional.default(nil)
        # @return [String] Community's website
        attribute :site, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Main section of community
        attribute :main_section, API::Types::Coercible::Int.enum(0, 1, 2, 3, 4, 5).optional.default(nil)
        # @return [Integer] Information whether current user can send a message to community
        attribute :can_message, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Start date of event in Unixtime
        attribute :start_date, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Finish date of event in Unixtime
        attribute :finish_date, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Information whether community is banned
        attribute :deactivated, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Information whether age limit
        attribute :age_limits, API::Types::Coercible::Int.enum(1, 2, 3).optional.default(nil)
      end
    end
  end
end
