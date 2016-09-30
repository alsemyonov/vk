# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of profiles of users whom the current user may know.
        class GetSuggestions < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getSuggestions'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :filter Types of potential friends to return:; 'mutual' — users with many mutual friends ; 'contacts' — users found with the  method; 'mutual_contacts' — users who imported the same contacts as the current user with the  method
          #   @option arguments [Integer] :count Number of suggestions to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of suggestions.
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.;
          #   @option arguments [String] :name_case Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @return [Friends::Methods::GetSuggestions]

          # @!group Arguments

          # @return [Array] Types of potential friends to return:; 'mutual' — users with many mutual friends ; 'contacts' — users found with the  method; 'mutual_contacts' — users who imported the same contacts as the current user with the  method
          attribute :filter, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Integer] Number of suggestions to return.
          attribute :count, API::Types::Coercible::Int.optional.default(500)
          # @return [Integer] Offset needed to return a specific subset of suggestions.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.;
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [String] Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.enum("nom", "gen", "dat", "acc", "ins", "abl").optional.default(nil)
        end
      end
    end
  end
end
