# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class RejectReason < Vk::Schema::Model
          # @return [String] Comment text
          attribute :comment, Schema::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :rules, Schema::Types::Coercible::Array.member(Model::Ads::Rules).optional
        end
      end
    end
  end
end
