# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Newsfeed
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ItemAudio < Vk::Schema::Model
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :audio, Schema::Types::Coercible::Hash.optional
        end
      end
    end
  end
end
