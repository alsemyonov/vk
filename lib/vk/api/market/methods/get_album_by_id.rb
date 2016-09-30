# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Returns items album's data
        class GetAlbumById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.getAlbumById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id identifier of an album owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
          #   @option arguments [Array] :album_ids collections identifiers to obtain data from
          #   @return [Market::Methods::GetAlbumById]

          # @!group Arguments

          # @return [Integer] identifier of an album owner community; "Note that community id in the 'owner_id' parameter should be negative number. For example 'owner_id'=-1 matches the [vk.com/apiclub|VK API] community "
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Array] collections identifiers to obtain data from
          attribute :album_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int)
        end
      end
    end
  end
end
