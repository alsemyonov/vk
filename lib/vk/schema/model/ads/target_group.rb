# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TargetGroup < Vk::Schema::Model
          # @return [Integer] Group ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Group name
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [String] Site domain
          attribute :domain, Schema::Types::Coercible::String.optional
          # @return [Integer] Audience
          attribute :audience_count, Schema::Types::Coercible::Int.optional
          # @return [Integer] Number of days for user to be in group
          attribute :lifetime, Schema::Types::Coercible::Int.optional
          # @return [String] Pixel code
          attribute :pixel, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
