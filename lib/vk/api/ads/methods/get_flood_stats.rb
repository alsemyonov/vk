# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns information about current state of a counter — number of remaining runs of methods and time to the next counter nulling in seconds.
        class GetFloodStats < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getFloodStats'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @return [Ads::Methods::GetFloodStats]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
