# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CropPhoto < Vk::Schema::Model
          # @return [Photo] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :photo, Dry::Types[Model::Photos::Photo].optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :crop, Schema::Types::Coercible::Hash.optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :rect, Schema::Types::Coercible::Hash.optional
        end
      end
    end
  end
end
