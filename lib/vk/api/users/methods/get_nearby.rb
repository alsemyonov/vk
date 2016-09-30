# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Methods
        # Indexes current user location and returns nearby users.
        class GetNearby < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'users.getNearby'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Number] :latitude geographic latitude of the place a user is located, in degrees (from -90 to 90)
          #   @option arguments [Number] :longitude geographic longitude of the place a user is located, in degrees (from -180 to 180)
          #   @option arguments [Integer] :accuracy current location accuracy in meters
          #   @option arguments [Integer] :timeout time when a user disappears from location search results, in seconds
          #   @option arguments [Integer] :radius search zone radius type (1 to 4); :* 1 – 300 m;; :* 2 – 2400 m;; :* 3 – 18 km;; :* 4 – 150 km.
          #   @option arguments [Array] :fields list of additional fields to return.; Available values: sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters, screen_name, maiden_name, timezone, occupation
          #   @option arguments [String] :name_case Case for declension of user name and surname: ; nom –nominative (default) ; gen – genitive ; dat – dative ; acc – accusative ; ins – instrumental ; abl – prepositional
          #   @return [Users::Methods::GetNearby]

          # @!group Arguments

          # @return [Number] geographic latitude of the place a user is located, in degrees (from -90 to 90)
          attribute :latitude, API::Types::Coercible::Int
          # @return [Number] geographic longitude of the place a user is located, in degrees (from -180 to 180)
          attribute :longitude, API::Types::Coercible::Int
          # @return [Integer] current location accuracy in meters
          attribute :accuracy, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] time when a user disappears from location search results, in seconds
          attribute :timeout, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] search zone radius type (1 to 4); :* 1 – 300 m;; :* 2 – 2400 m;; :* 3 – 18 km;; :* 4 – 150 km.
          attribute :radius, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] list of additional fields to return.; Available values: sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters, screen_name, maiden_name, timezone, occupation
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] Case for declension of user name and surname: ; nom –nominative (default) ; gen – genitive ; dat – dative ; acc – accusative ; ins – instrumental ; abl – prepositional
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
