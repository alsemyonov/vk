# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      module Methods
        # Returns information about locations by their IDs.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'places.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :places Location IDs.
          #   @return [Places::Methods::GetById]

          # @!group Arguments

          # @return [Array] Location IDs.
          attribute :places, API::Types::Coercible::Array
        end
      end
    end
  end
end
