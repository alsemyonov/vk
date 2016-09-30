# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Returns the text of one of the previous versions of a wiki page.
        class GetVersion < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'pages.getVersion'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :version_id 
          #   @option arguments [Integer] :group_id ID of the community that owns the wiki page.
          #   @option arguments [Integer] :user_id 
          #   @option arguments [Boolean] :need_html '1' — to return the page as HTML
          #   @return [Pages::Methods::GetVersion]

          # @!group Arguments

          # @return [Integer] 
          attribute :version_id, API::Types::Coercible::Int
          # @return [Integer] ID of the community that owns the wiki page.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] 
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return the page as HTML
          attribute :need_html, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
