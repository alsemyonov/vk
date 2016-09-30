# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Adds a tag on the photo.
        class PutTag < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.putTag'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :photo_id Photo ID.
          #   @option arguments [Integer] :user_id ID of the user to be tagged.
          #   @option arguments [Number] :x Upper left-corner coordinate of the tagged area (as a percentage of the photo's width).
          #   @option arguments [Number] :y Upper left-corner coordinate of the tagged area (as a percentage of the photo's height).
          #   @option arguments [Number] :x2 Lower right-corner coordinate of the tagged area (as a percentage of the photo's width).
          #   @option arguments [Number] :y2 Lower right-corner coordinate of the tagged area (as a percentage of the photo's height).
          #   @return [Photos::Methods::PutTag]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Photo ID.
          attribute :photo_id, API::Types::Coercible::Int
          # @return [Integer] ID of the user to be tagged.
          attribute :user_id, API::Types::Coercible::Int
          # @return [Number] Upper left-corner coordinate of the tagged area (as a percentage of the photo's width).
          attribute :x, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Upper left-corner coordinate of the tagged area (as a percentage of the photo's height).
          attribute :y, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Lower right-corner coordinate of the tagged area (as a percentage of the photo's width).
          attribute :x2, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Lower right-corner coordinate of the tagged area (as a percentage of the photo's height).
          attribute :y2, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
