# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns a list of photos.
        class Search < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'photos.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string.
          #   @option arguments [Number] :lat Geographical latitude, in degrees (from '-90' to '90').
          #   @option arguments [Number] :long Geographical longitude, in degrees (from '-180' to '180').;
          #   @option arguments [Integer] :start_time 
          #   @option arguments [Integer] :end_time 
          #   @option arguments [Integer] :sort Sort order:
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of photos.
          #   @option arguments [Integer] :count Number of photos to return.
          #   @option arguments [Integer] :radius Radius of search in meters (works very approximately). Available values: '10', '100', '800', '6000', '50000'.
          #   @return [Photos::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Number] Geographical latitude, in degrees (from '-90' to '90').
          attribute :lat, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical longitude, in degrees (from '-180' to '180').;
          attribute :long, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] 
          attribute :start_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] 
          attribute :end_time, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Sort order:
          attribute :sort, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of photos.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of photos to return.
          attribute :count, API::Types::Coercible::Int.optional.default(100)
          # @return [Integer] Radius of search in meters (works very approximately). Available values: '10', '100', '800', '6000', '50000'.
          attribute :radius, API::Types::Coercible::Int.optional.default(5000)
        end
      end
    end
  end
end
