# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Utils < Vk::Schema::Namespace
      module Methods
        # Returns the current time of the VK server.
        class GetServerTime < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'utils.getServerTime'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Utils::Methods::GetServerTime]

          # @!group Arguments

        end
      end
    end
  end
end
