# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns a list of regions.
        class GetRegions < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getRegions'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :country_id Country ID, received in  method.
          #   @option arguments [String] :q Search query.
          #   @option arguments [Integer] :offset Offset needed to return specific subset of regions.
          #   @option arguments [Integer] :count Number of regions to return.
          #   @return [Database::Methods::GetRegions]

          # @!group Arguments

          # @return [Integer] Country ID, received in  method.
          attribute :country_id, API::Types::Coercible::Int
          # @return [String] Search query.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Offset needed to return specific subset of regions.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of regions to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
