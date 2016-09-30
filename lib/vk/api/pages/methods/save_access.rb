# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Saves modified read and edit access settings for a wiki page.
        class SaveAccess < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'pages.saveAccess'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :page_id Wiki page ID.
          #   @option arguments [Integer] :group_id ID of the community that owns the wiki page.
          #   @option arguments [Integer] :user_id 
          #   @option arguments [Integer] :view Who can view the wiki page:; '1' — only community members; '2' — all users can view the page; '0' — only community managers
          #   @option arguments [Integer] :edit Who can edit the wiki page:; '1' — only community members; '2' — all users can edit the page; '0' — only community managers
          #   @return [Pages::Methods::SaveAccess]

          # @!group Arguments

          # @return [Integer] Wiki page ID.
          attribute :page_id, API::Types::Coercible::Int
          # @return [Integer] ID of the community that owns the wiki page.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] 
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Who can view the wiki page:; '1' — only community members; '2' — all users can view the page; '0' — only community managers
          attribute :view, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Who can edit the wiki page:; '1' — only community members; '2' — all users can edit the page; '0' — only community managers
          attribute :edit, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
