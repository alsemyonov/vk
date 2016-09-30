# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Saves a photo to a user's or community's wall after being uploaded.
        class SaveWallPhoto < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.saveWallPhoto'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of the user on whose wall the photo will be saved.
          #   @option arguments [Integer] :group_id ID of community on whose wall the photo will be saved.
          #   @option arguments [String] :photo Parameter returned when the .
          #   @option arguments [Integer] :server @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :hash @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::SaveWallPhoto]

          # @!group Arguments

          # @return [Integer] ID of the user on whose wall the photo will be saved.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of community on whose wall the photo will be saved.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Parameter returned when the .
          attribute :photo, API::Types::Coercible::String
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :server, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :hash, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
