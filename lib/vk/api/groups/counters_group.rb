# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class CountersGroup < Vk::Schema::Object
        # @return [Integer] Photos number
        attribute :photos, API::Types::Coercible::Int.optional
        # @return [Integer] Photo albums number
        attribute :albums, API::Types::Coercible::Int.optional
        # @return [Integer] Topics number
        attribute :topics, API::Types::Coercible::Int.optional
        # @return [Integer] Videos number
        attribute :videos, API::Types::Coercible::Int.optional
        # @return [Integer] Audios number
        attribute :audios, API::Types::Coercible::Int.optional
        # @return [Integer] Docs number
        attribute :docs, API::Types::Coercible::Int.optional
        # @return [Integer] Market items number
        attribute :market, API::Types::Coercible::Int.optional
      end
    end
  end
end
