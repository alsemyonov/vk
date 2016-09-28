# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Methods
        # Returns information whether a user installed the application.
        class IsAppUser < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'users.isAppUser'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Users::Methods::IsAppUser]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
