# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DeleteList < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.deleteList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :list_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Newsfeed::Methods::DeleteList]

          # @!group Arguments

          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :list_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
