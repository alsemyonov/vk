# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Pages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WikipageFull < Vk::Schema::Model
          # @return [Integer] Page ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Community ID
          attribute :group_id, Schema::Types::Coercible::Int
          # @return [String] Page title
          attribute :title, Schema::Types::Coercible::String
          # @return [BaseBoolInt] Information whether current user can edit the page
          attribute :current_user_can_edit, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether current user can edit the page access settings
          attribute :current_user_can_edit_access, Schema::Types::BaseBoolInt.optional
          # @return [PagesPrivacySettings] View settings of the page
          attribute :who_can_view, Schema::Types::PagesPrivacySettings
          # @return [PagesPrivacySettings] Edit settings of the page
          attribute :who_can_edit, Schema::Types::PagesPrivacySettings
          # @return [Integer] Date when the page has been edited in Unixtime
          attribute :edited, Schema::Types::Coercible::Int
          # @return [Integer] Date when the page has been created in Unixtime
          attribute :created, Schema::Types::Coercible::Int
          # @return [Integer] Views number
          attribute :views, Schema::Types::Coercible::Int
          # @return [Integer] Last editor ID
          attribute :editor_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Page creator ID
          attribute :creator_id, Schema::Types::Coercible::Int.optional
          # @return [String] Page content, wiki
          attribute :source, Schema::Types::Coercible::String.optional
          # @return [String] Page content, HTML
          attribute :html, Schema::Types::Coercible::String.optional
          # @return [String] URL of the page preview
          attribute :view_url, Schema::Types::Coercible::String
        end
      end
    end
  end
end
