# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Edits the friend lists of the selected user.
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of the user whose friend list is to be edited.
          #   @option arguments [Array] :list_ids IDs of the friend lists to which to add the user.
          #   @return [Friends::Methods::Edit]

          # @!group Arguments

          # @return [Integer] ID of the user whose friend list is to be edited.
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [Array] IDs of the friend lists to which to add the user.
          attribute :list_ids, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
