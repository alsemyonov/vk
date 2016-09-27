# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserSettings < Vk::Schema::Model
          # @return [String] User first name
          attribute :first_name, Schema::Types::Coercible::String.optional
          # @return [String] User last name
          attribute :last_name, Schema::Types::Coercible::String.optional
          # @return [String] User maiden name
          attribute :maiden_name, Schema::Types::Coercible::String.optional
          # @return [String] Domain name of the user's page
          attribute :screen_name, Schema::Types::Coercible::String.optional
          # @return [Integer] User sex
          attribute :sex, Schema::Types::Coercible::Int.optional
          # @return [Integer] User relationship status
          attribute :relation, Schema::Types::Coercible::Int.optional
          # @return [UserMin] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :relation_partner, Dry::Types[Model::Users::UserMin].optional
          # @return [Integer] Information whether relation status is pending
          attribute :relation_pending, Schema::Types::Coercible::Int.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :relation_requests, Schema::Types::Coercible::Array.member(Model::Users::UserMin).optional
          # @return [String] User's date of birth
          attribute :bdate, Schema::Types::Coercible::String.optional
          # @return [Integer] Information whether user's birthdate are hidden
          attribute :bdate_visibility, Schema::Types::Coercible::Int.optional
          # @return [String] User's hometown
          attribute :home_town, Schema::Types::Coercible::String.optional
          # @return [Country] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :country, Dry::Types[Model::Base::Country].optional
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :city, Dry::Types[Model::Base::Object].optional
          # @return [String] User status
          attribute :status, Schema::Types::Coercible::String.optional
          # @return [String] User phone number with some hidden digits
          attribute :phone, Schema::Types::Coercible::String.optional
          # @return [NameRequest] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :name_request, Dry::Types[Model::Account::NameRequest].optional
        end
      end
    end
  end
end
