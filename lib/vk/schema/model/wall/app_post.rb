# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AppPost < Vk::Schema::Model
          # @return [Integer] Application ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Application name
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 130 px in width
          attribute :photo_130, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image with 604 px in width
          attribute :photo_604, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
