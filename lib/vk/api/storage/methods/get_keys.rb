# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Storage < Vk::Schema::Namespace
      module Methods
        # Returns the names of all variables.
        class GetKeys < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'storage.getKeys'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id user id, whose variables names are returned if they were requested with a server method.
          #   @option arguments [Integer] :count amount of variable names the info needs to be collected from.
          #   @return [Storage::Methods::GetKeys]

          # @!group Arguments

          # @return [Integer] user id, whose variables names are returned if they were requested with a server method.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] amount of variable names the info needs to be collected from.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
