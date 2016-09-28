# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Saves a photo after being successfully uploaded. URL obtained with  method.
        class SaveMessagesPhoto < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.saveMessagesPhoto'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :photo Parameter returned when .
          #   @option arguments [Integer] :server @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :hash @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Photos::Methods::SaveMessagesPhoto]

          # @!group Arguments

          # @return [String] Parameter returned when .
          attribute :photo, API::Types::Coercible::String.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :server, API::Types::Coercible::Int.optional
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :hash, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
