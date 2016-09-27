# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Campaign < Vk::Schema::Model
          # @return [Integer] Campaign ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Campaign type
          attribute :type, Schema::Types::Coercible::String
          # @return [Integer] Campaign title
          attribute :name, Schema::Types::Coercible::Int
          # @return [Integer] Campaign status
          attribute :status, Schema::Types::Coercible::Int
          # @return [String] Campaign's day limit, rubles
          attribute :day_limit, Schema::Types::Coercible::String
          # @return [String] Campaign's total limit, rubles
          attribute :all_limit, Schema::Types::Coercible::String
          # @return [Integer] Campaign start time, as Unixtime
          attribute :start_time, Schema::Types::Coercible::Int
          # @return [Integer] Campaign stop time, as Unixtime
          attribute :stop_time, Schema::Types::Coercible::Int
        end
      end
    end
  end
end
