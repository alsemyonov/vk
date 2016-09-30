# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns number of ads.
        class GetAds < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getAds'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'Available and required for advertising agencies.' ID of the client ads are retrieved from.
          #   @option arguments [Boolean] :include_deleted Flag that specifies whether archived ads shall be shown:; *0 — show only active ads;; *1 — show all ads.;
          #   @option arguments [String] :campaign_ids Filter by advertising campaigns. ; Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.;
          #   @option arguments [String] :ad_ids Filter by ads. ; Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.;
          #   @option arguments [Integer] :limit Limit of number of returned ads. Used only if ad_ids parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
          #   @option arguments [Integer] :offset Offset. Used in the same cases as 'limit' parameter.
          #   @return [Ads::Methods::GetAds]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [Integer] 'Available and required for advertising agencies.' ID of the client ads are retrieved from.
          attribute :client_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] Flag that specifies whether archived ads shall be shown:; *0 — show only active ads;; *1 — show all ads.;
          attribute :include_deleted, API::Types::Bool.optional.default(nil)
          # @return [String] Filter by advertising campaigns. ; Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.;
          attribute :campaign_ids, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Filter by ads. ; Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.;
          attribute :ad_ids, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Limit of number of returned ads. Used only if ad_ids parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
          attribute :limit, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset. Used in the same cases as 'limit' parameter.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
