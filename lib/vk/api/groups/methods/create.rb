# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Creates a new community.
        class Create < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.create'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :title Community title.
          #   @option arguments [String] :description Community description (ignored for 'type' = 'public').
          #   @option arguments [String] :type Community type. Possible values:; *'group' – group;; *'event' – event;; *'public' – public page
          #   @option arguments [Integer] :public_category Category ID (for 'type' = 'public' only).
          #   @option arguments [Integer] :subtype Public page subtype. Possible values:; *'1' – place or small business;; *'2' – company, organizaton or website;; *'3' – famous person or group of people;; *'4' – product or work of art.
          #   @return [Groups::Methods::Create]

          # @!group Arguments

          # @return [String] Community title.
          attribute :title, API::Types::Coercible::String
          # @return [String] Community description (ignored for 'type' = 'public').
          attribute :description, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Community type. Possible values:; *'group' – group;; *'event' – event;; *'public' – public page
          attribute :type, API::Types::Coercible::String.enum("group", "public", "event").optional.default("group")
          # @return [Integer] Category ID (for 'type' = 'public' only).
          attribute :public_category, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Public page subtype. Possible values:; *'1' – place or small business;; *'2' – company, organizaton or website;; *'3' – famous person or group of people;; *'4' – product or work of art.
          attribute :subtype, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
