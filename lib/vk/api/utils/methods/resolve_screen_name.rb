# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Utils < Vk::Schema::Namespace
      module Methods
        # Detects a type of object (e.g., user, community, application) and its ID by screen name.
        class ResolveScreenName < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'utils.resolveScreenName'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :screen_name Screen name of the user, community (e.g., 'apiclub,' 'andrew', or 'rules_of_war'), or application.
          #   @return [Utils::Methods::ResolveScreenName]

          # @!group Arguments

          # @return [String] Screen name of the user, community (e.g., 'apiclub,' 'andrew', or 'rules_of_war'), or application.
          attribute :screen_name, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
