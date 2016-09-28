# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Status < Vk::Schema::Namespace
      module Methods
        # Returns data required to show the status of a user or community.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'status.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID or community ID. Use a negative value to designate a community ID.
          #   @option arguments [Integer] :group_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Status::Methods::Get]

          # @!group Arguments

          # @return [Integer] User ID or community ID. Use a negative value to designate a community ID.
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
