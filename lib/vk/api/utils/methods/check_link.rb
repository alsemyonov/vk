# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Utils < Vk::Schema::Namespace
      module Methods
        # Checks whether a link is blocked in VK.
        class CheckLink < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'utils.checkLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :url Link to check (e.g., 'http://google.com').
          #   @return [Utils::Methods::CheckLink]

          # @!group Arguments

          # @return [String] Link to check (e.g., 'http://google.com').
          attribute :url, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
