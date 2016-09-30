# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a list of advertising agency's clients.
        class GetClients < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getClients'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @return [Ads::Methods::GetClients]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
