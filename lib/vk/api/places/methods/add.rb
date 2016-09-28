# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      module Methods
        # Adds a new location to the location database.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'places.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :type ID of the location's type (e.g., '1' — Home, '2' — Work). To get location type IDs, use the   method.
          #   @option arguments [String] :title Title of the location.
          #   @option arguments [Number] :latitude Geographical latitude, in degrees (from '-90' to '90').
          #   @option arguments [Number] :longitude Geographical longitude, in degrees (from '-180' to '180').
          #   @option arguments [Integer] :country ID of the location's country. To get country IDs, use the  method.
          #   @option arguments [Integer] :city ID of the location's city. To get city IDs, use the  method.
          #   @option arguments [String] :address Street address of the location (e.g., '125 Elm Street').
          #   @return [Places::Methods::Add]

          # @!group Arguments

          # @return [Integer] ID of the location's type (e.g., '1' — Home, '2' — Work). To get location type IDs, use the   method.
          attribute :type, API::Types::Coercible::Int.optional
          # @return [String] Title of the location.
          attribute :title, API::Types::Coercible::String.optional
          # @return [Number] Geographical latitude, in degrees (from '-90' to '90').
          attribute :latitude, API::Types::Coercible::Int.optional
          # @return [Number] Geographical longitude, in degrees (from '-180' to '180').
          attribute :longitude, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the location's country. To get country IDs, use the  method.
          attribute :country, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the location's city. To get city IDs, use the  method.
          attribute :city, API::Types::Coercible::Int.optional
          # @return [String] Street address of the location (e.g., '125 Elm Street').
          attribute :address, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
