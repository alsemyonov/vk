# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Retuns ad targeting parameters.
        class GetAdsTargeting < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getAdsTargeting'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'For advertising agencies.' ID of the client ads are retrieved from.
          #   @option arguments [Boolean] :include_deleted flag that specifies whether archived ads shall be shown:; *0 — show only active ads;; *1 — show all ads.
          #   @option arguments [String] :campaign_ids Filter by advertising campaigns.; Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.;
          #   @option arguments [String] :ad_ids Filter by ads.; Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.
          #   @option arguments [Integer] :limit Limit of number of returned ads. Used only if 'ad_ids' parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @return [Ads::Methods::GetAdsTargeting]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [Integer] 'For advertising agencies.' ID of the client ads are retrieved from.
          attribute :client_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] flag that specifies whether archived ads shall be shown:; *0 — show only active ads;; *1 — show all ads.
          attribute :include_deleted, API::Types::Form::Bool.optional.default(nil)
          # @return [String] Filter by advertising campaigns.; Serialized JSON array with campaign IDs. If the parameter is null, ads of all campaigns will be shown.;
          attribute :campaign_ids, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Filter by ads.; Serialized JSON array with ad IDs. If the parameter is null, all ads will be shown.
          attribute :ad_ids, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Limit of number of returned ads. Used only if 'ad_ids' parameter is null, and 'campaign_ids' parameter contains ID of only one campaign.
          attribute :limit, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
