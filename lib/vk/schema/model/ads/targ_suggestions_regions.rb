# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TargSuggestionsRegions < Vk::Schema::Model
          # @return [Integer] Object ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Object name
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [String] Object type
          attribute :type, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
