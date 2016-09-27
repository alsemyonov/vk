# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CountersGroup < Vk::Schema::Model
          # @return [Integer] Photos number
          attribute :photos, Schema::Types::Coercible::Int.optional
          # @return [Integer] Photo albums number
          attribute :albums, Schema::Types::Coercible::Int.optional
          # @return [Integer] Topics number
          attribute :topics, Schema::Types::Coercible::Int.optional
          # @return [Integer] Videos number
          attribute :videos, Schema::Types::Coercible::Int.optional
          # @return [Integer] Audios number
          attribute :audios, Schema::Types::Coercible::Int.optional
          # @return [Integer] Docs number
          attribute :docs, Schema::Types::Coercible::Int.optional
          # @return [Integer] Market items number
          attribute :market, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
