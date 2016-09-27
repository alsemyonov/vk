# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Paragraphs < Vk::Schema::Model
          # @return [String] Rules paragraph
          attribute :paragraph, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
