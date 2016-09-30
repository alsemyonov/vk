# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Approves or creates a friend request.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of the user whose friend request will be approved or to whom a friend request will be sent.
          #   @option arguments [String] :text Text of the message (up to 500 characters) for the friend request, if any.
          #   @option arguments [Boolean] :follow '1' to pass an incoming request to followers list.
          #   @return [Friends::Methods::Add]

          # @!group Arguments

          # @return [Integer] ID of the user whose friend request will be approved or to whom a friend request will be sent.
          attribute :user_id, API::Types::Coercible::Int
          # @return [String] Text of the message (up to 500 characters) for the friend request, if any.
          attribute :text, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' to pass an incoming request to followers list.
          attribute :follow, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
