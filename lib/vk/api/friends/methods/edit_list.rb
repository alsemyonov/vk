# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Edits a friend list of the current user.
        class EditList < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.editList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :name Name of the friend list.
          #   @option arguments [Integer] :list_id Friend list ID.
          #   @option arguments [Array] :user_ids IDs of users in the friend list.
          #   @option arguments [Array] :add_user_ids (Applies if 'user_ids' parameter is not set.); User IDs to add to the friend list.
          #   @option arguments [Array] :delete_user_ids (Applies if 'user_ids' parameter is not set.); User IDs to delete from the friend list.
          #   @return [Friends::Methods::EditList]

          # @!group Arguments

          # @return [String] Name of the friend list.
          attribute :name, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Friend list ID.
          attribute :list_id, API::Types::Coercible::Int
          # @return [Array] IDs of users in the friend list.
          attribute :user_ids, API::Types::Coercible::Array.optional.default(nil)
          # @return [Array] (Applies if 'user_ids' parameter is not set.); User IDs to add to the friend list.
          attribute :add_user_ids, API::Types::Coercible::Array.optional.default(nil)
          # @return [Array] (Applies if 'user_ids' parameter is not set.); User IDs to delete from the friend list.
          attribute :delete_user_ids, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
