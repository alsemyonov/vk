# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Messages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class MessageLink < Vk::Schema::Model
          # @return [String] Link URL
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [String] Link title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Link description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image
          attribute :image_src, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
