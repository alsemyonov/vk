# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TargSettings < Vk::Schema::Model
          # @return [Integer] Ad ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Campaign ID
          attribute :campaign_id, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
