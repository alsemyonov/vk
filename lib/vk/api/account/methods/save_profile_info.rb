# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Edits current profile info.
        class SaveProfileInfo < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.saveProfileInfo'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :first_name User first name.
          #   @option arguments [String] :last_name User last name.
          #   @option arguments [String] :maiden_name User maiden name (female only)
          #   @option arguments [String] :screen_name User screen name.
          #   @option arguments [Integer] :cancel_request_id ID of the name change request to be canceled. If this paremeter is sent, all the others are ignored.
          #   @option arguments [Integer] :sex User sex. Possible values: ; * '1' – female;; * '2' – male.
          #   @option arguments [Integer] :relation User relationship status. Possible values: ; * '1' – single;; * '2' – in a relationship;; * '3' – engaged;; * '4' – married;; * '5' – it's complicated;; * '6' – actively searching;; * '7' – in love;; * '0' – not specified.
          #   @option arguments [Integer] :relation_partner_id ID of the relationship partner.
          #   @option arguments [String] :bdate User birth date, format: DD.MM.YYYY.
          #   @option arguments [Integer] :bdate_visibility Birth date visibility. Returned values: ; * '1' – show birth date;; * '2' – show only month and date;; * '0' – hide birth date.
          #   @option arguments [String] :home_town User home town.
          #   @option arguments [Integer] :country_id User country.
          #   @option arguments [Integer] :city_id User city.
          #   @option arguments [String] :status Status text.
          #   @return [Account::Methods::SaveProfileInfo]

          # @!group Arguments

          # @return [String] User first name.
          attribute :first_name, API::Types::Coercible::String.optional.default(nil)
          # @return [String] User last name.
          attribute :last_name, API::Types::Coercible::String.optional.default(nil)
          # @return [String] User maiden name (female only)
          attribute :maiden_name, API::Types::Coercible::String.optional.default(nil)
          # @return [String] User screen name.
          attribute :screen_name, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of the name change request to be canceled. If this paremeter is sent, all the others are ignored.
          attribute :cancel_request_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] User sex. Possible values: ; * '1' – female;; * '2' – male.
          attribute :sex, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] User relationship status. Possible values: ; * '1' – single;; * '2' – in a relationship;; * '3' – engaged;; * '4' – married;; * '5' – it's complicated;; * '6' – actively searching;; * '7' – in love;; * '0' – not specified.
          attribute :relation, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the relationship partner.
          attribute :relation_partner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] User birth date, format: DD.MM.YYYY.
          attribute :bdate, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Birth date visibility. Returned values: ; * '1' – show birth date;; * '2' – show only month and date;; * '0' – hide birth date.
          attribute :bdate_visibility, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] User home town.
          attribute :home_town, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] User country.
          attribute :country_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] User city.
          attribute :city_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Status text.
          attribute :status, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
