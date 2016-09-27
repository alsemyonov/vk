# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LinkProduct < Vk::Schema::Model
          # @return [Price] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :price, Dry::Types[Model::Market::Price].optional
        end
      end
    end
  end
end
