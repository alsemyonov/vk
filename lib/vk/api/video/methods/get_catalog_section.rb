# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns a separate catalog section
        class GetCatalogSection < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'video.getCatalogSection'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :section_id 'id' value returned with a block by the '' method.
          #   @option arguments [String] :from 'next' value returned with a block by the '' method.
          #   @option arguments [Integer] :count number of blocks to return.
          #   @return [Video::Methods::GetCatalogSection]

          # @!group Arguments

          # @return [String] 'id' value returned with a block by the '' method.
          attribute :section_id, API::Types::Coercible::String
          # @return [String] 'next' value returned with a block by the '' method.
          attribute :from, API::Types::Coercible::String
          # @return [Integer] number of blocks to return.
          attribute :count, API::Types::Coercible::Int.optional.default(10)
        end
      end
    end
  end
end
