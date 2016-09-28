# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Archives clients of an advertising agency.
        class DeleteClients < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.deleteClients'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :ids Serialized JSON array with IDs of deleted clients.
          #   @return [Ads::Methods::DeleteClients]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
          # @return [String] Serialized JSON array with IDs of deleted clients.
          attribute :ids, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
