# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a list of campaigns in an advertising account.
        class GetCampaigns < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getCampaigns'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'For advertising agencies'. ID of the client advertising campaigns are retrieved from.
          #   @option arguments [Boolean] :include_deleted Flag that specifies whether archived ads shall be shown.; *0 — show only active campaigns;; *1 — show all campaigns.;
          #   @option arguments [String] :campaign_ids Filter of advertising campaigns to show. ; Serialized JSON array with campaign IDs. Only campaigns that exist in 'campaign_ids' and belong to the specified advertising account will be shown. If the parameter is null, all campaigns will be shown.;
          #   @return [Ads::Methods::GetCampaigns]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
          # @return [Integer] 'For advertising agencies'. ID of the client advertising campaigns are retrieved from.
          attribute :client_id, API::Types::Coercible::Int.optional
          # @return [Boolean] Flag that specifies whether archived ads shall be shown.; *0 — show only active campaigns;; *1 — show all campaigns.;
          attribute :include_deleted, API::Types::Bool.optional
          # @return [String] Filter of advertising campaigns to show. ; Serialized JSON array with campaign IDs. Only campaigns that exist in 'campaign_ids' and belong to the specified advertising account will be shown. If the parameter is null, all campaigns will be shown.;
          attribute :campaign_ids, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
