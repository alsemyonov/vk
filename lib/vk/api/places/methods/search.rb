# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      module Methods
        # Returns a list of locations that match the search criteria.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'places.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string.
          #   @option arguments [Integer] :city City ID.
          #   @option arguments [Number] :latitude Geographical latitude of the initial search point, in degrees (from '-90' to '90').
          #   @option arguments [Number] :longitude Geographical longitude of the initial search point, in degrees (from '-180' to '180').
          #   @option arguments [Integer] :radius Radius of the search zone:; '1' — 100 m. (default); '2' — 800 m.; '3' — 6 km.; '4' — 50 km.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of locations.
          #   @option arguments [Integer] :count Number of locations to return.
          #   @return [Places::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] City ID.
          attribute :city, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical latitude of the initial search point, in degrees (from '-90' to '90').
          attribute :latitude, API::Types::Coercible::Int
          # @return [Number] Geographical longitude of the initial search point, in degrees (from '-180' to '180').
          attribute :longitude, API::Types::Coercible::Int
          # @return [Integer] Radius of the search zone:; '1' — 100 m. (default); '2' — 800 m.; '3' — 6 km.; '4' — 50 km.
          attribute :radius, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of locations.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of locations to return.
          attribute :count, API::Types::Coercible::Int.optional.default(30)
        end
      end
    end
  end
end
