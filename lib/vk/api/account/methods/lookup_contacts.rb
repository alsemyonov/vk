# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Allows to search the VK users using phone numbers, e-mail addresses and user IDs on other services.
        class LookupContacts < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.lookupContacts'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :contacts List of contacts separated with commas
          #   @option arguments [String] :service String identifier of a service which contacts are used for searching. Possible values: ; * email; * phone; * twitter; * facebook; * odnoklassniki; * instagram; * google
          #   @option arguments [String] :mycontact Contact of a current user on a specified service
          #   @option arguments [Boolean] :return_all '1' – also return contacts found using this service before, '0' – return only contacts found using 'contacts' field.
          #   @option arguments [Array] :fields Profile fields to return. Possible values: 'nickname, domain, sex, bdate, city, country, timezone, photo_50, photo_100, photo_200_orig, has_mobile, contacts, education, online, relation, last_seen, status, can_write_private_message, can_see_all_posts, can_post, universities'.
          #   @return [Account::Methods::LookupContacts]

          # @!group Arguments

          # @return [Array] List of contacts separated with commas
          attribute :contacts, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] String identifier of a service which contacts are used for searching. Possible values: ; * email; * phone; * twitter; * facebook; * odnoklassniki; * instagram; * google
          attribute :service, API::Types::Coercible::String
          # @return [String] Contact of a current user on a specified service
          attribute :mycontact, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' – also return contacts found using this service before, '0' – return only contacts found using 'contacts' field.
          attribute :return_all, API::Types::Bool.optional.default(nil)
          # @return [Array] Profile fields to return. Possible values: 'nickname, domain, sex, bdate, city, country, timezone, photo_50, photo_100, photo_200_orig, has_mobile, contacts, education, online, relation, last_seen, status, can_write_private_message, can_see_all_posts, can_post, universities'.
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
