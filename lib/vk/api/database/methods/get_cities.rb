# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns a list of cities.
        class GetCities < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getCities'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :country_id Country ID.
          #   @option arguments [Integer] :region_id Region ID.
          #   @option arguments [String] :q Search query.
          #   @option arguments [Boolean] :need_all '1' — to return all cities in the country; '0' — to return major cities in the country (default);
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of cities.
          #   @option arguments [Integer] :count Number of cities to return.
          #   @return [Database::Methods::GetCities]

          # @!group Arguments

          # @return [Integer] Country ID.
          attribute :country_id, API::Types::Coercible::Int
          # @return [Integer] Region ID.
          attribute :region_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Search query.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — to return all cities in the country; '0' — to return major cities in the country (default);
          attribute :need_all, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of cities.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of cities to return.
          attribute :count, API::Types::Coercible::Int.optional.default(100)
        end
      end
    end
  end
end
