# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a list of advertising accounts.
        class GetAccounts < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getAccounts'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Ads::Methods::GetAccounts]

          # @!group Arguments

        end
      end
    end
  end
end
