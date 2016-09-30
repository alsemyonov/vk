# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Methods
        # Returns a list of last user actions for the offer.
        class GetUsers < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'leads.getUsers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offer_id Offer ID.
          #   @option arguments [String] :secret Secret key obtained in the lead testing interface.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Integer] :count Number of results to return.
          #   @option arguments [Integer] :status Action type. Possible values:; *'0' — start;; *'1' — finish;; *'2' — blocking users;; *'3' — start in a test mode;; *'4' — finish in a test mode.;
          #   @option arguments [Boolean] :reverse Sort order. Possible values:; *'1' — chronological;; *'0' — reverse chronological.
          #   @return [Leads::Methods::GetUsers]

          # @!group Arguments

          # @return [Integer] Offer ID.
          attribute :offer_id, API::Types::Coercible::Int
          # @return [String] Secret key obtained in the lead testing interface.
          attribute :secret, API::Types::Coercible::String
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional.default(100)
          # @return [Integer] Action type. Possible values:; *'0' — start;; *'1' — finish;; *'2' — blocking users;; *'3' — start in a test mode;; *'4' — finish in a test mode.;
          attribute :status, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] Sort order. Possible values:; *'1' — chronological;; *'0' — reverse chronological.
          attribute :reverse, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
