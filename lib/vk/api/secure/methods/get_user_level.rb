# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Returns one of the previously set game levels of one or more users in the application.
        class GetUserLevel < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.getUserLevel'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :user_ids @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Secure::Methods::GetUserLevel]

          # @!group Arguments

          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int)
        end
      end
    end
  end
end
