# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Auth < Vk::Schema::Namespace
      module Methods
        # Allows to restore account access using a code received via SMS.; ; " This method is only available for apps with  access. "
        class Restore < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'auth.restore'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :phone user phone number.
          #   @return [Auth::Methods::Restore]

          # @!group Arguments

          # @return [String] user phone number.
          attribute :phone, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
