# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LinkButton < Vk::Schema::Model
          # @return [String] Button URL
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [String] Button title
          attribute :title, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
