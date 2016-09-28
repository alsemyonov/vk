# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Client < Vk::Schema::Object
        # @return [Integer] Client ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Client name
        attribute :name, API::Types::Coercible::String
        # @return [String] Client's day limit, rubles
        attribute :day_limit, API::Types::Coercible::String
        # @return [String] Client's total limit, rubles
        attribute :all_limit, API::Types::Coercible::String
      end
    end
  end
end
