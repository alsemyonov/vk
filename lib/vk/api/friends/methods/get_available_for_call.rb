# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of friends who can be called by the current user.
        class GetAvailableForCall < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'friends.getAvailableForCall'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'uid', 'first_name', 'last_name', 'nickname', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'domain', 'has_mobile', 'rate', 'contacts', 'education'.;
          #   @option arguments [String] :name_case Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @return [Friends::Methods::GetAvailableForCall]

          # @!group Arguments

          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'uid', 'first_name', 'last_name', 'nickname', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'domain', 'has_mobile', 'rate', 'contacts', 'education'.;
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [String] Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.enum("nom", "gen", "dat", "acc", "ins", "abl").optional.default("nom")
        end
      end
    end
  end
end
