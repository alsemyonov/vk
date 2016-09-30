# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Creates advertising campaigns.
        class CreateCampaigns < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.createCampaigns'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :data Serialized JSON array of objects that describe created campaigns. Description of 'campaign_specification' objects see below.
          #   @return [Ads::Methods::CreateCampaigns]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [String] Serialized JSON array of objects that describe created campaigns. Description of 'campaign_specification' objects see below.
          attribute :data, API::Types::Coercible::String
        end
      end
    end
  end
end
