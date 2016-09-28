# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a list of managers and supervisors of advertising account.
        class GetOfficeUsers < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getOfficeUsers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @return [Ads::Methods::GetOfficeUsers]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
