# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns a list of higher education institutions.
        class GetUniversities < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getUniversities'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query.
          #   @option arguments [Integer] :country_id Country ID.
          #   @option arguments [Integer] :city_id City ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of universities.
          #   @option arguments [Integer] :count Number of universities to return.
          #   @return [Database::Methods::GetUniversities]

          # @!group Arguments

          # @return [String] Search query.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Country ID.
          attribute :country_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] City ID.
          attribute :city_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of universities.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of universities to return.
          attribute :count, API::Types::Coercible::Int.optional.default(100)
        end
      end
    end
  end
end
