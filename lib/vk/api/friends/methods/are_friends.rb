# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Checks the current user's friendship status with other specified users.
        class AreFriends < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.areFriends'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :user_ids IDs of the users whose friendship status to check.
          #   @option arguments [Boolean] :need_sign '1' — to return 'sign' field. 'sign' is md5("\$1id\$1_\$1user_id\$1_\$1friends_status\$1_\$1application_secret\$1"), where id is current user ID.; This field allows to check that data has not been modified by the client.; By default: '0'.
          #   @return [Friends::Methods::AreFriends]

          # @!group Arguments

          # @return [Array] IDs of the users whose friendship status to check.
          attribute :user_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int)
          # @return [Boolean] '1' — to return 'sign' field. 'sign' is md5("\$1id\$1_\$1user_id\$1_\$1friends_status\$1_\$1application_secret\$1"), where id is current user ID.; This field allows to check that data has not been modified by the client.; By default: '0'.
          attribute :need_sign, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
