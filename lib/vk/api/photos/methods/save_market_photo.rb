# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Saves market photos after successful uploading.
        class SaveMarketPhoto < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.saveMarketPhoto'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [String] :photo Parameter returned when photos are .
          #   @option arguments [Integer] :server Parameter returned when photos are .
          #   @option arguments [String] :hash Parameter returned when photos are .
          #   @option arguments [String] :crop_data Parameter returned when photos are .
          #   @option arguments [String] :crop_hash Parameter returned when photos are .
          #   @return [Photos::Methods::SaveMarketPhoto]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Parameter returned when photos are .
          attribute :photo, API::Types::Coercible::String.optional
          # @return [Integer] Parameter returned when photos are .
          attribute :server, API::Types::Coercible::Int.optional
          # @return [String] Parameter returned when photos are .
          attribute :hash, API::Types::Coercible::String.optional
          # @return [String] Parameter returned when photos are .
          attribute :crop_data, API::Types::Coercible::String.optional
          # @return [String] Parameter returned when photos are .
          attribute :crop_hash, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
