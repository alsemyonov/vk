# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Methods
        # Returns documents types available for current user.
        class GetTypes < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'docs.getTypes'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the documents. Use a negative value to designate a community ID.
          #   @return [Docs::Methods::GetTypes]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the documents. Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
