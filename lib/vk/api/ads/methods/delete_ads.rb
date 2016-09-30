# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Archives ads.
        class DeleteAds < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.deleteAds'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :ids Serialized JSON array with ad IDs.
          #   @return [Ads::Methods::DeleteAds]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [String] Serialized JSON array with ad IDs.
          attribute :ids, API::Types::Coercible::String
        end
      end
    end
  end
end
