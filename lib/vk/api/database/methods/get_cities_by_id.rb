# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns information about cities by their IDs.
        class GetCitiesById < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getCitiesById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :city_ids City IDs.
          #   @return [Database::Methods::GetCitiesById]

          # @!group Arguments

          # @return [Array] City IDs.
          attribute :city_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).constrained(max_size: 1000).optional.default(nil)
        end
      end
    end
  end
end
