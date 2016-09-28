# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      module Methods
        # Returns a list of all types of locations.
        class GetTypes < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'places.getTypes'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Places::Methods::GetTypes]

          # @!group Arguments

        end
      end
    end
  end
end
