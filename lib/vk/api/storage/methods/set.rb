# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Storage < Vk::Schema::Namespace
      module Methods
        # Saves a value of variable with the name set by 'key' parameter.
        class Set < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'storage.set'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :key @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [String] :value @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Storage::Methods::Set]

          # @!group Arguments

          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :key, API::Types::Coercible::String.optional
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :value, API::Types::Coercible::String.optional
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
