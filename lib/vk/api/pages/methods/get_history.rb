# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Returns a list of all previous versions of a wiki page.
        class GetHistory < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'pages.getHistory'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :page_id Wiki page ID.
          #   @option arguments [Integer] :group_id ID of the community that owns the wiki page.
          #   @option arguments [Integer] :user_id 
          #   @return [Pages::Methods::GetHistory]

          # @!group Arguments

          # @return [Integer] Wiki page ID.
          attribute :page_id, API::Types::Coercible::Int
          # @return [Integer] ID of the community that owns the wiki page.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] 
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
