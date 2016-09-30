# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Methods
        # Returns a list of users matching the search criteria.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'users.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string (e.g., 'Vasya Babich').
          #   @option arguments [Integer] :sort Sort order:; '1' — by date registered; '0' — by rating
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of users.
          #   @option arguments [Integer] :count Number of users to return.
          #   @option arguments [Array, 'bdate'] :fields Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online';
          #   @option arguments [Integer] :city City ID.
          #   @option arguments [Integer] :country Country ID.
          #   @option arguments [String] :hometown City name in a string.
          #   @option arguments [Integer] :university_country ID of the country where the user graduated.
          #   @option arguments [Integer] :university ID of the institution of higher education.
          #   @option arguments [Integer] :university_year Year of graduation from an institution of higher education.
          #   @option arguments [Integer] :university_faculty Faculty ID.
          #   @option arguments [Integer] :university_chair Chair ID.
          #   @option arguments [Integer] :sex '1' — female; '2' — male; '0' — any (default)
          #   @option arguments [Integer] :status Relationship status:; '1' — Not married; '2' — In a relationship; '3' — Engaged; '4' — Married; '5' — It's complicated; '6' — Actively searching; '7' — In love
          #   @option arguments [Integer] :age_from Minimum age.
          #   @option arguments [Integer] :age_to Maximum age.
          #   @option arguments [Integer] :birth_day Day of birth.
          #   @option arguments [Integer] :birth_month Month of birth.
          #   @option arguments [Integer] :birth_year Year of birth.
          #   @option arguments [Boolean] :online '1' — online only; '0' — all users
          #   @option arguments [Boolean] :has_photo '1' — with photo only; '0' — all users
          #   @option arguments [Integer] :school_country ID of the country where users finished school.
          #   @option arguments [Integer] :school_city ID of the city where users finished school.
          #   @option arguments [Integer] :school_class @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :school ID of the school.
          #   @option arguments [Integer] :school_year School graduation year.
          #   @option arguments [String] :religion Users' religious affiliation.
          #   @option arguments [String] :interests Users' interests.
          #   @option arguments [String] :company Name of the company where users work.
          #   @option arguments [String] :position Job position.
          #   @option arguments [Integer] :group_id ID of a community to search in communities.
          #   @option arguments [Array] :from_list @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Users::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string (e.g., 'Vasya Babich').
          attribute :q, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] Sort order:; '1' — by date registered; '0' — by rating
          attribute :sort, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of users.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of users to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [Array, 'bdate'] Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate' (birthdate), 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online';
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [Integer] City ID.
          attribute :city, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Country ID.
          attribute :country, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] City name in a string.
          attribute :hometown, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of the country where the user graduated.
          attribute :university_country, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the institution of higher education.
          attribute :university, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Year of graduation from an institution of higher education.
          attribute :university_year, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Faculty ID.
          attribute :university_faculty, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Chair ID.
          attribute :university_chair, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] '1' — female; '2' — male; '0' — any (default)
          attribute :sex, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Relationship status:; '1' — Not married; '2' — In a relationship; '3' — Engaged; '4' — Married; '5' — It's complicated; '6' — Actively searching; '7' — In love
          attribute :status, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Minimum age.
          attribute :age_from, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Maximum age.
          attribute :age_to, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Day of birth.
          attribute :birth_day, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Month of birth.
          attribute :birth_month, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Year of birth.
          attribute :birth_year, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — online only; '0' — all users
          attribute :online, API::Types::Form::Bool.optional.default(nil)
          # @return [Boolean] '1' — with photo only; '0' — all users
          attribute :has_photo, API::Types::Form::Bool.optional.default(nil)
          # @return [Integer] ID of the country where users finished school.
          attribute :school_country, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the city where users finished school.
          attribute :school_city, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :school_class, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the school.
          attribute :school, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] School graduation year.
          attribute :school_year, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Users' religious affiliation.
          attribute :religion, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Users' interests.
          attribute :interests, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Name of the company where users work.
          attribute :company, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Job position.
          attribute :position, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of a community to search in communities.
          attribute :group_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :from_list, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
