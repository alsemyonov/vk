# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a reason of ad rejection for pre-moderation.
        class GetRejectionReason < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getRejectionReason'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :ad_id Ad ID.
          #   @return [Ads::Methods::GetRejectionReason]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [Integer] Ad ID.
          attribute :ad_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
