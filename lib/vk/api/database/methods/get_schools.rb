# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns a list of schools.
        class GetSchools < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getSchools'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query.
          #   @option arguments [Integer] :city_id City ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of schools.
          #   @option arguments [Integer] :count Number of schools to return.
          #   @return [Database::Methods::GetSchools]

          # @!group Arguments

          # @return [String] Search query.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] City ID.
          attribute :city_id, API::Types::Coercible::Int
          # @return [Integer] Offset needed to return a specific subset of schools.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of schools to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
