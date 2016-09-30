# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns video catalog
        class GetCatalog < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'video.getCatalog'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :count number of catalog blocks to return.
          #   @option arguments [Integer] :items_count number of videos in each block.
          #   @option arguments [String] :from parameter for requesting the next results page. Value for transmitting here is returned in the 'next' field in a reply.
          #   @option arguments [Array] :filters list of requested catalog sections
          #   @return [Video::Methods::GetCatalog]

          # @!group Arguments

          # @return [Integer] number of catalog blocks to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] number of videos in each block.
          attribute :items_count, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] parameter for requesting the next results page. Value for transmitting here is returned in the 'next' field in a reply.
          attribute :from, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] list of requested catalog sections
          attribute :filters, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
