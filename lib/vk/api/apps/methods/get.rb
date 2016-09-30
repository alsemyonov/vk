# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Apps < Vk::Schema::Namespace
      module Methods
        # Returns applications data.
        class Get < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'apps.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :app_id Application ID
          #   @option arguments [Array] :app_ids List of application ID
          #   @option arguments [String] :platform platform. Possible values:; *'ios' — iOS;; *'android' — Android;; *'winphone' — Windows Phone;; *'web' — приложения на vk.com.; By default: 'web'.
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'contacts', 'education', 'online', 'counters', 'relation', 'last_seen', 'activity', 'can_write_private_message', 'can_see_all_posts', 'can_post', 'universities';  (only if return_friends - 1)
          #   @option arguments [String] :name_case Case for declension of user name and surname:; 'nom' — nominative (default);; 'gen' — genitive;; 'dat' — dative;; 'acc' — accusative;; 'ins' — instrumental;; 'abl' — prepositional.; ; (only if 'return_friends' = '1')
          #   @return [Apps::Methods::Get]

          # @!group Arguments

          # @return [Integer] Application ID
          attribute :app_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] List of application ID
          attribute :app_ids, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] platform. Possible values:; *'ios' — iOS;; *'android' — Android;; *'winphone' — Windows Phone;; *'web' — приложения на vk.com.; By default: 'web'.
          attribute :platform, API::Types::Coercible::String.optional.default(nil)
          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'contacts', 'education', 'online', 'counters', 'relation', 'last_seen', 'activity', 'can_write_private_message', 'can_see_all_posts', 'can_post', 'universities';  (only if return_friends - 1)
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] Case for declension of user name and surname:; 'nom' — nominative (default);; 'gen' — genitive;; 'dat' — dative;; 'acc' — accusative;; 'ins' — instrumental;; 'abl' — prepositional.; ; (only if 'return_friends' = '1')
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
