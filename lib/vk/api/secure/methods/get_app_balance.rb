# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Returns payment balance of the application in hundredth of a vote.
        class GetAppBalance < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.getAppBalance'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Secure::Methods::GetAppBalance]

          # @!group Arguments

        end
      end
    end
  end
end
