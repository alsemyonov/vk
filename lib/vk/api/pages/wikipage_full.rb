# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class WikipageFull < Vk::Schema::Object
        # @return [Integer] Page ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Community ID
        attribute :group_id, API::Types::Coercible::Int
        # @return [String] Page title
        attribute :title, API::Types::Coercible::String
        # @return [API::Base::BoolInt] Information whether current user can edit the page
        attribute :current_user_can_edit, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether current user can edit the page access settings
        attribute :current_user_can_edit_access, API::Base::BoolInt.optional.default(nil)
        # @return [API::Pages::PrivacySettings] View settings of the page
        attribute :who_can_view, API::Pages::PrivacySettings
        # @return [API::Pages::PrivacySettings] Edit settings of the page
        attribute :who_can_edit, API::Pages::PrivacySettings
        # @return [Integer] Date when the page has been edited in Unixtime
        attribute :edited, API::Types::Coercible::Int
        # @return [Integer] Date when the page has been created in Unixtime
        attribute :created, API::Types::Coercible::Int
        # @return [Integer] Views number
        attribute :views, API::Types::Coercible::Int
        # @return [Integer] Last editor ID
        attribute :editor_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Page creator ID
        attribute :creator_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Page content, wiki
        attribute :source, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Page content, HTML
        attribute :html, API::Types::Coercible::String.optional.default(nil)
        # @return [String] URL of the page preview
        attribute :view_url, API::Types::Coercible::String
      end
    end
  end
end
