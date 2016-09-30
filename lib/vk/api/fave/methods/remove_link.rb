# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Removes link from the user's faves.
        class RemoveLink < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.removeLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :link_id Link ID (can be obtained by  method).
          #   @return [Fave::Methods::RemoveLink]

          # @!group Arguments

          # @return [String] Link ID (can be obtained by  method).
          attribute :link_id, API::Types::Coercible::String
        end
      end
    end
  end
end
