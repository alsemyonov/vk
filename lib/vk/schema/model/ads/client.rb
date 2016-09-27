# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Client < Vk::Schema::Model
          # @return [Integer] Client ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [String] Client name
          attribute :name, Schema::Types::Coercible::String
          # @return [String] Client's day limit, rubles
          attribute :day_limit, Schema::Types::Coercible::String
          # @return [String] Client's total limit, rubles
          attribute :all_limit, Schema::Types::Coercible::String
        end
      end
    end
  end
end
