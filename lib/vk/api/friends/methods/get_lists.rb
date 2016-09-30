# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of the user's friend lists.
        class GetLists < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getLists'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Boolean] :return_system '1' — to return system friend lists. By default: '0'.
          #   @return [Friends::Methods::GetLists]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return system friend lists. By default: '0'.
          attribute :return_system, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
