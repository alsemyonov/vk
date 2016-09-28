# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      module Methods
        # Returns user score in app
        class GetScore < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'apps.getScore'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Apps::Methods::GetScore]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
