# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Wikipage < Vk::Schema::Object
        # @return [Integer] Page ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Community ID
        attribute :group_id, API::Types::Coercible::Int
        # @return [String] Page title
        attribute :title, API::Types::Coercible::String
        # @return [API::Pages::PrivacySettings] View settings of the page
        attribute :who_can_view, API::Pages::PrivacySettings
        # @return [API::Pages::PrivacySettings] Edit settings of the page
        attribute :who_can_edit, API::Pages::PrivacySettings
        # @return [Integer] Views number
        attribute :views, API::Types::Coercible::Int
        # @return [Integer] Last editor ID
        attribute :editor_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Last editor name
        attribute :editor_name, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Page creator ID
        attribute :creator_id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Page creator name
        attribute :creator_name, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
