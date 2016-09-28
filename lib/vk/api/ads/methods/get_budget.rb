# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns current budget of the advertising account.
        class GetBudget < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getBudget'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @return [Ads::Methods::GetBudget]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
