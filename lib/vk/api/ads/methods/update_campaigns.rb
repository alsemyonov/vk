# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Edits advertising campaigns.
        class UpdateCampaigns < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.updateCampaigns'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :data Serialized JSON array of objects that describe changes in campaigns. Description of 'campaign_mod' objects see below.
          #   @return [Ads::Methods::UpdateCampaigns]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [String] Serialized JSON array of objects that describe changes in campaigns. Description of 'campaign_mod' objects see below.
          attribute :data, API::Types::Coercible::String
        end
      end
    end
  end
end
