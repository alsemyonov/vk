# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Returns information about a wiki page.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'pages.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id Page owner ID.
          #   @option arguments [Integer] :page_id Wiki page ID.
          #   @option arguments [Boolean] :global '1' — to return information about a global wiki page
          #   @option arguments [Boolean] :site_preview '1' — resulting wiki page is a preview for the attached link
          #   @option arguments [String] :title Wiki page title.
          #   @option arguments [Boolean] :need_source @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :need_html '1' — to return the page as HTML;
          #   @return [Pages::Methods::Get]

          # @!group Arguments

          # @return [Integer] Page owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Wiki page ID.
          attribute :page_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return information about a global wiki page
          attribute :global, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — resulting wiki page is a preview for the attached link
          attribute :site_preview, API::Types::Bool.optional.default(nil)
          # @return [String] Wiki page title.
          attribute :title, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :need_source, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return the page as HTML;
          attribute :need_html, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
