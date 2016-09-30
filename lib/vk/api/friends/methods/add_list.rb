# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Creates a new friend list for the current user.
        class AddList < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.addList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :name Name of the friend list.
          #   @option arguments [Array] :user_ids IDs of users to be added to the friend list.;
          #   @return [Friends::Methods::AddList]

          # @!group Arguments

          # @return [String] Name of the friend list.
          attribute :name, API::Types::Coercible::String
          # @return [Array] IDs of users to be added to the friend list.;
          attribute :user_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
        end
      end
    end
  end
end
