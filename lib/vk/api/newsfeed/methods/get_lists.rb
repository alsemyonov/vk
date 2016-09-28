# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Returns a list of newsfeeds followed by the current user.
        class GetLists < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.getLists'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :list_ids numeric list identifiers.
          #   @return [Newsfeed::Methods::GetLists]

          # @!group Arguments

          # @return [Array] numeric list identifiers.
          attribute :list_ids, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
