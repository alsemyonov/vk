# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Pages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Wikipage < Vk::Schema::Model
          # @return [Integer] Page ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Community ID
          attribute :group_id, Schema::Types::Coercible::Int
          # @return [String] Page title
          attribute :title, Schema::Types::Coercible::String
          # @return [PagesPrivacySettings] View settings of the page
          attribute :who_can_view, Schema::Types::PagesPrivacySettings
          # @return [PagesPrivacySettings] Edit settings of the page
          attribute :who_can_edit, Schema::Types::PagesPrivacySettings
          # @return [Integer] Views number
          attribute :views, Schema::Types::Coercible::Int
          # @return [Integer] Last editor ID
          attribute :editor_id, Schema::Types::Coercible::Int.optional
          # @return [String] Last editor name
          attribute :editor_name, Schema::Types::Coercible::String.optional
          # @return [Integer] Page creator ID
          attribute :creator_id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Page creator name
          attribute :creator_name, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
