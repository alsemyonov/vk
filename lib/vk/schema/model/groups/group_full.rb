# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GroupFull < Model::Groups::Group
          # @return [MarketInfo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :market, Dry::Types[Model::Groups::MarketInfo].optional
          # @return [Integer] Current user's member status
          attribute :member_status, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether community is in faves
          attribute :is_favorite, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user is subscribed
          attribute :is_subscribed, Schema::Types::BaseBoolInt.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :city, Dry::Types[Model::Base::Object].optional
          # @return [Country] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :country, Dry::Types[Model::Base::Country].optional
          # @return [BaseBoolInt] Information whether community is verified
          attribute :verified, Schema::Types::BaseBoolInt.optional
          # @return [String] Community description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] Community's main wiki page title
          attribute :wiki_page, Schema::Types::Coercible::String.optional
          # @return [Integer] Community members number
          attribute :members_count, Schema::Types::Coercible::Int.optional
          # @return [CountersGroup] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :counters, Dry::Types[Model::Groups::CountersGroup].optional
          # @return [BaseBoolInt] Information whether current user can post on community's wall
          attribute :can_post, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user can see all posts on community's wall
          attribute :can_see_all_posts, Schema::Types::BaseBoolInt.optional
          # @return [String] Type of group, start date of event or category of public page
          attribute :activity, Schema::Types::Coercible::String.optional
          # @return [Integer] Fixed post ID
          attribute :fixed_post, Schema::Types::Coercible::Int.optional
          # @return [BaseBoolInt] Information whether current user can create topic
          attribute :can_create_topic, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user can upload video
          attribute :can_upload_video, Schema::Types::BaseBoolInt.optional
          # @return [String] Community status
          attribute :status, Schema::Types::Coercible::String.optional
          # @return [Integer] Community's main photo album ID
          attribute :main_album_id, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :links, Schema::Types::Coercible::Array.member(Model::Groups::LinksItem).optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :contacts, Schema::Types::Coercible::Array.member(Model::Groups::ContactsItem).optional
          # @return [String] Community's website
          attribute :site, Schema::Types::Coercible::String.optional
          # @return [Integer] Main section of community
          attribute :main_section, Schema::Types::Coercible::Int.optional
          # @return [Integer] Information whether current user can send a message to community
          attribute :can_message, Schema::Types::Coercible::Int.optional
          # @return [Integer] Start date of event in Unixtime
          attribute :start_date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Finish date of event in Unixtime
          attribute :finish_date, Schema::Types::Coercible::Int.optional
          # @return [String] Information whether community is banned
          attribute :deactivated, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether age limit
          attribute :age_limits, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
