# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Methods
        # Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
        class ClearCache < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'pages.clearCache'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :url Address of the page where you need to refesh the cached version
          #   @return [Pages::Methods::ClearCache]

          # @!group Arguments

          # @return [String] Address of the page where you need to refesh the cached version
          attribute :url, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
