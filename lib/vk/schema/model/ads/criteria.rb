# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Criteria < Vk::Schema::Model
          # @return [Integer] Sex
          attribute :sex, Schema::Types::Coercible::Int.optional
          # @return [Integer] Age from
          attribute :age_from, Schema::Types::Coercible::Int.optional
          # @return [Integer] Age to
          attribute :age_to, Schema::Types::Coercible::Int.optional
          # @return [Integer] Days to birthday
          attribute :birthday, Schema::Types::Coercible::Int.optional
          # @return [Integer] Country ID
          attribute :country, Schema::Types::Coercible::Int.optional
          # @return [String] Cities IDs
          attribute :cities, Schema::Types::Coercible::String.optional
          # @return [String] Cities IDs to except
          attribute :cities_not, Schema::Types::Coercible::String.optional
          # @return [String] Relationship statuses
          attribute :statuses, Schema::Types::Coercible::String.optional
          # @return [String] Communities IDs
          attribute :groups, Schema::Types::Coercible::String.optional
          # @return [String] Apps IDs
          attribute :apps, Schema::Types::Coercible::String.optional
          # @return [String] Apps IDs to except
          attribute :apps_not, Schema::Types::Coercible::String.optional
          # @return [String] Districts IDs
          attribute :districts, Schema::Types::Coercible::String.optional
          # @return [String] Stations IDs
          attribute :stations, Schema::Types::Coercible::String.optional
          # @return [String] Streets IDs
          attribute :streets, Schema::Types::Coercible::String.optional
          # @return [String] Schools IDs
          attribute :schools, Schema::Types::Coercible::String.optional
          # @return [String] Positions IDs
          attribute :positions, Schema::Types::Coercible::String.optional
          # @return [String] Religions IDs
          attribute :religions, Schema::Types::Coercible::String.optional
          # @return [String] Interests
          attribute :interests, Schema::Types::Coercible::String.optional
          # @return [String] Interests categories IDs
          attribute :interest_categories, Schema::Types::Coercible::String.optional
          # @return [String] Devices
          attribute :user_devices, Schema::Types::Coercible::String.optional
          # @return [String] Operating systems
          attribute :user_os, Schema::Types::Coercible::String.optional
          # @return [String] Browsers
          attribute :user_browsers, Schema::Types::Coercible::String.optional
          # @return [String] Retargeting groups IDs
          attribute :retargeting_groups, Schema::Types::Coercible::String.optional
          # @return [String] Retargeting groups IDs to except
          attribute :retargeting_groups_not, Schema::Types::Coercible::String.optional
          # @return [BaseBoolInt] Information whether the user has proceeded VK payments before
          attribute :paying, Schema::Types::BaseBoolInt.optional
          # @return [BasePropertyExists] Travellers only
          attribute :travellers, Schema::Types::BasePropertyExists.optional
          # @return [Integer] School graduation year from
          attribute :school_from, Schema::Types::Coercible::Int.optional
          # @return [Integer] School graduation year to
          attribute :school_to, Schema::Types::Coercible::Int.optional
          # @return [Integer] University graduation year from
          attribute :uni_from, Schema::Types::Coercible::Int.optional
          # @return [Integer] University graduation year to
          attribute :uni_to, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
