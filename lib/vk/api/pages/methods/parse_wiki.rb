# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Returns HTML representation of the wiki markup.
        class ParseWiki < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'pages.parseWiki'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :text Text of the wiki page.
          #   @option arguments [Integer] :group_id ID of the group in the context of which this markup is interpreted.;
          #   @return [Pages::Methods::ParseWiki]

          # @!group Arguments

          # @return [String] Text of the wiki page.
          attribute :text, API::Types::Coercible::String
          # @return [Integer] ID of the group in the context of which this markup is interpreted.;
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
