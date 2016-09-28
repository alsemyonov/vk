# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Creates ads.
        class CreateAds < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.createAds'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :data Serialized JSON array of objects that describe created ads. Description of 'ad_specification' objects see below.
          #   @return [Ads::Methods::CreateAds]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
          # @return [String] Serialized JSON array of objects that describe created ads. Description of 'ad_specification' objects see below.
          attribute :data, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
