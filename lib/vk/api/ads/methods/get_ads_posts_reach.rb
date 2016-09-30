# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Allows to get detailed information about the ad post reach.
        class GetAdsPostsReach < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getAdsPostsReach'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :ads_ids Ads IDS separated by comma.
          #   @return [Ads::Methods::GetAdsPostsReach]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [String] Ads IDS separated by comma.
          attribute :ads_ids, API::Types::Coercible::String
        end
      end
    end
  end
end
