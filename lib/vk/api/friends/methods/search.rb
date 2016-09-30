# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of friends matching the search criteria.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [String] :q Search query string (e.g., 'Vasya Babich').
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online';
          #   @option arguments [String] :name_case Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of friends.
          #   @option arguments [Integer] :count Number of friends to return.
          #   @return [Friends::Methods::Search]

          # @!group Arguments

          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int
          # @return [String] Search query string (e.g., 'Vasya Babich').
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online';
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of friends.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of friends to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
