# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TargSuggestionsSchools < Vk::Schema::Model
          # @return [Integer] School ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] School title
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [String] Full school title
          attribute :desc, Schema::Types::Coercible::String.optional
          # @return [String] School type
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [String] City name
          attribute :parent, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
