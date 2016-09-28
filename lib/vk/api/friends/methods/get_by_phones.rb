# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of the current user's friends whose phone numbers, validated or specified in a profile, are in a given list.
        class GetByPhones < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getByPhones'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :phones List of phone numbers in MSISDN format (maximum 1000).; Example:; "+79219876543,+79111234567"
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online, counters'.;
          #   @return [Friends::Methods::GetByPhones]

          # @!group Arguments

          # @return [Array] List of phone numbers in MSISDN format (maximum 1000).; Example:; "+79219876543,+79111234567"
          attribute :phones, API::Types::Coercible::Array.optional
          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online, counters'.;
          attribute :fields, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
