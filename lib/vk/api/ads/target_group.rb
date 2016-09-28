# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class TargetGroup < Vk::Schema::Object
        # @return [Integer] Group ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Group name
        attribute :name, API::Types::Coercible::String.optional
        # @return [String] Site domain
        attribute :domain, API::Types::Coercible::String.optional
        # @return [Integer] Audience
        attribute :audience_count, API::Types::Coercible::Int.optional
        # @return [Integer] Number of days for user to be in group
        attribute :lifetime, API::Types::Coercible::Int.optional
        # @return [String] Pixel code
        attribute :pixel, API::Types::Coercible::String.optional
      end
    end
  end
end
