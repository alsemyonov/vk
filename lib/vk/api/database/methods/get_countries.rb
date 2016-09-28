# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns a list of countries.
        class GetCountries < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getCountries'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Boolean] :need_all '1' — to return a full list of all countries; '0' — to return a list of countries near the current user's country (default).;
          #   @option arguments [String] :code Country codes in  standard.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of countries.
          #   @option arguments [Integer] :count Number of countries to return.
          #   @return [Database::Methods::GetCountries]

          # @!group Arguments

          # @return [Boolean] '1' — to return a full list of all countries; '0' — to return a list of countries near the current user's country (default).;
          attribute :need_all, API::Types::Bool.optional
          # @return [String] Country codes in  standard.
          attribute :code, API::Types::Coercible::String.optional
          # @return [Integer] Offset needed to return a specific subset of countries.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of countries to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
