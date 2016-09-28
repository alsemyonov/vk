# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Saves the text of a wiki page.
        class Save < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'pages.save'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :text Text of the wiki page in wiki-format.
          #   @option arguments [Integer] :page_id Wiki page ID. The 'title' parameter can be passed instead of 'pid'.
          #   @option arguments [Integer] :group_id ID of the community that owns the wiki page.
          #   @option arguments [Integer] :user_id 
          #   @option arguments [String] :title Wiki page title.
          #   @return [Pages::Methods::Save]

          # @!group Arguments

          # @return [String] Text of the wiki page in wiki-format.
          attribute :text, API::Types::Coercible::String.optional
          # @return [Integer] Wiki page ID. The 'title' parameter can be passed instead of 'pid'.
          attribute :page_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the community that owns the wiki page.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] 
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [String] Wiki page title.
          attribute :title, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
