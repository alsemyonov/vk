# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserSettings < Vk::Schema::Object
        # @return [String] User first name
        attribute :first_name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] User last name
        attribute :last_name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] User maiden name
        attribute :maiden_name, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Domain name of the user's page
        attribute :screen_name, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] User sex
        attribute :sex, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] User relationship status
        attribute :relation, API::Types::Coercible::Int.optional.default(nil)
        # @return [API::Users::UserMin] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :relation_partner, Dry::Types[API::Users::UserMin].optional.default(nil)
        # @return [Integer] Information whether relation status is pending
        attribute :relation_pending, API::Types::Coercible::Int.optional.default(nil)
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :relation_requests, API::Types::Coercible::Array.member(API::Users::UserMin).optional.default(nil)
        # @return [String] User's date of birth
        attribute :bdate, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Information whether user's birthdate are hidden
        attribute :bdate_visibility, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] User's hometown
        attribute :home_town, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::Country] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :country, Dry::Types[API::Base::Country].optional.default(nil)
        # @return [API::Base::Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :city, Dry::Types[API::Base::Object].optional.default(nil)
        # @return [String] User status
        attribute :status, API::Types::Coercible::String.optional.default(nil)
        # @return [String] User phone number with some hidden digits
        attribute :phone, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Account::NameRequest] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :name_request, Dry::Types[API::Account::NameRequest].optional.default(nil)
      end
    end
  end
end
