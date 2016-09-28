# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Methods
        # Checks if the user can start the lead.
        class CheckUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'leads.checkUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :lead_id Lead ID.
          #   @option arguments [Integer] :test_result Value to be return in 'result' field when test mode is used.
          #   @option arguments [Integer] :age User age.
          #   @option arguments [String] :country User country code.
          #   @return [Leads::Methods::CheckUser]

          # @!group Arguments

          # @return [Integer] Lead ID.
          attribute :lead_id, API::Types::Coercible::Int.optional
          # @return [Integer] Value to be return in 'result' field when test mode is used.
          attribute :test_result, API::Types::Coercible::Int.optional
          # @return [Integer] User age.
          attribute :age, API::Types::Coercible::Int.optional
          # @return [String] User country code.
          attribute :country, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
