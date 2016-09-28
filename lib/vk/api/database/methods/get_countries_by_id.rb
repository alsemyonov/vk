# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns information about countries by their IDs.
        class GetCountriesById < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getCountriesById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :country_ids Country IDs.
          #   @return [Database::Methods::GetCountriesById]

          # @!group Arguments

          # @return [Array] Country IDs.
          attribute :country_ids, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
