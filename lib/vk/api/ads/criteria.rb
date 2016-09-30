# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Criteria < Vk::Schema::Object
        # @return [Integer] Sex
        attribute :sex, API::Types::Coercible::Int.enum(0, 1, 2).optional.default(nil)
        # @return [Integer] Age from
        attribute :age_from, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Age to
        attribute :age_to, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Days to birthday
        attribute :birthday, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Country ID
        attribute :country, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Cities IDs
        attribute :cities, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Cities IDs to except
        attribute :cities_not, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Relationship statuses
        attribute :statuses, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Communities IDs
        attribute :groups, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Apps IDs
        attribute :apps, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Apps IDs to except
        attribute :apps_not, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Districts IDs
        attribute :districts, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Stations IDs
        attribute :stations, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Streets IDs
        attribute :streets, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Schools IDs
        attribute :schools, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Positions IDs
        attribute :positions, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Religions IDs
        attribute :religions, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Interests
        attribute :interests, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Interests categories IDs
        attribute :interest_categories, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Devices
        attribute :user_devices, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Operating systems
        attribute :user_os, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Browsers
        attribute :user_browsers, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Retargeting groups IDs
        attribute :retargeting_groups, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Retargeting groups IDs to except
        attribute :retargeting_groups_not, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether the user has proceeded VK payments before
        attribute :paying, API::Base::BoolInt.optional.default(nil)
        # @return [API::Base::PropertyExists] Travellers only
        attribute :travellers, API::Base::PropertyExists.optional.default(nil)
        # @return [Integer] School graduation year from
        attribute :school_from, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] School graduation year to
        attribute :school_to, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] University graduation year from
        attribute :uni_from, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] University graduation year to
        attribute :uni_to, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
