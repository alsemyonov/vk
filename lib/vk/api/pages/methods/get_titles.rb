# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Returns a list of wiki pages in a group.
        class GetTitles < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'pages.getTitles'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID of the community that owns the wiki page.
          #   @return [Pages::Methods::GetTitles]

          # @!group Arguments

          # @return [Integer] ID of the community that owns the wiki page.
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
