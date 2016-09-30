# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Campaign < Vk::Schema::Object
        # @return [Integer] Campaign ID
        attribute :id, API::Types::Coercible::Int
        # @return [String] Campaign type
        attribute :type, API::Types::Coercible::String.enum("normal", "vk_apps_managed", "mobile_apps", "promoted_posts")
        # @return [Integer] Campaign title
        attribute :name, API::Types::Coercible::Int
        # @return [Integer] Campaign status
        attribute :status, API::Types::Coercible::Int.enum(0, 1, 2)
        # @return [String] Campaign's day limit, rubles
        attribute :day_limit, API::Types::Coercible::String
        # @return [String] Campaign's total limit, rubles
        attribute :all_limit, API::Types::Coercible::String
        # @return [Integer] Campaign start time, as Unixtime
        attribute :start_time, API::Types::Coercible::Int
        # @return [Integer] Campaign stop time, as Unixtime
        attribute :stop_time, API::Types::Coercible::Int
      end
    end
  end
end
