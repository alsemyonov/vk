# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Methods
        # Returns a list of IDs of followers of the user in question, sorted by date added, most recent first.
        class GetFollowers < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'users.getFollowers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of followers.
          #   @option arguments [Integer] :count Number of followers to return.
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online'.;
          #   @option arguments [String] :name_case Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @return [Users::Methods::GetFollowers]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of followers.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of followers to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online'.;
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
