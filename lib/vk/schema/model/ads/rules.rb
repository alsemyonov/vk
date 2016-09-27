# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Rules < Vk::Schema::Model
          # @return [String] Comment
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :paragraphs, Schema::Types::Coercible::Array.member(Model::Ads::Paragraphs).optional
        end
      end
    end
  end
end
