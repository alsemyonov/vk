# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Friends < Vk::Schema::Namespace
      module Methods
        # Returns a list of user IDs or detailed information about a user's friends.
        class Get < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'friends.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id User ID. By default, the current user ID.
          #   @option arguments [String] :order Sort order: ; 'name' — by name (enabled only if the 'fields' parameter is used); 'hints' — by rating, similar to how friends are sorted in My friends section; ; This parameter is available only for .
          #   @option arguments [Integer] :list_id ID of the friend list returned by the  method to be used as the source. This parameter is taken into account only when the uid parameter is set to the current user ID.; ; This parameter is available only for .;
          #   @option arguments [Integer] :count Number of friends to return.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of friends.
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'uid', 'first_name', 'last_name', 'nickname', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'domain', 'has_mobile', 'rate', 'contacts', 'education'.;
          #   @option arguments [String] :name_case Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @return [Friends::Methods::Get]

          # @!group Arguments

          # @return [Integer] User ID. By default, the current user ID.
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Sort order: ; 'name' — by name (enabled only if the 'fields' parameter is used); 'hints' — by rating, similar to how friends are sorted in My friends section; ; This parameter is available only for .
          attribute :order, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of the friend list returned by the  method to be used as the source. This parameter is taken into account only when the uid parameter is set to the current user ID.; ; This parameter is available only for .;
          attribute :list_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of friends to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of friends.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'uid', 'first_name', 'last_name', 'nickname', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'domain', 'has_mobile', 'rate', 'contacts', 'education'.;
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
