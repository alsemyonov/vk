# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Hides a video catalog section from a user.
        class HideCatalogSection < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.hideCatalogSection'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :section_id 'id' value returned with a block to hide by the '' method.
          #   @return [Video::Methods::HideCatalogSection]

          # @!group Arguments

          # @return [Integer] 'id' value returned with a block to hide by the '' method.
          attribute :section_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
