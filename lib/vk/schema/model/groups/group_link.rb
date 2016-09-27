# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GroupLink < Vk::Schema::Model
          # @return [Integer] Link ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Link URL
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [BaseBoolInt] Information whether the title can be edited
          attribute :edit_title, Schema::Types::BaseBoolInt.optional
          # @return [String] Link description
          attribute :desc, Schema::Types::Coercible::String.optional
          # @return [BaseBoolInt] Information whether the image on processing
          attribute :image_processing, Schema::Types::BaseBoolInt.optional
        end
      end
    end
  end
end
