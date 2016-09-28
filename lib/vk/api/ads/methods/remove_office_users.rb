# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Removes managers and/or supervisors from advertising account.
        class RemoveOfficeUsers < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.removeOfficeUsers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :ids Serialized JSON array with IDs of deleted managers.
          #   @return [Ads::Methods::RemoveOfficeUsers]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
          # @return [String] Serialized JSON array with IDs of deleted managers.
          attribute :ids, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
