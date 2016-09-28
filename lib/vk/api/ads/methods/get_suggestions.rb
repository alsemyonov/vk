# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a set of auto-suggestions for various targeting parameters.
        class GetSuggestions < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getSuggestions'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :section Section, suggestions are retrieved in. Available values:; *countries — request of a list of countries. If q is not set or blank, a short list of countries is shown. Otherwise, a full list of countries is shown.; *regions — requested list of regions.  'country' parameter is required.; *cities — requested list of cities. 'country' parameter is required.; *districts — requested list of districts.  'cities' parameter is required.; *stations — requested list of subway stations.  'cities' parameter is required.; *streets — requested list of cities. 'cities' parameter is required.; *schools — requested list of educational organizations.  'cities' parameter is required.; *interests — requested list of interests.; *positions — requested list of positions (professions).; *group_types — requested list of group types.; *religions — requested list of religious commitments.; *browsers — requested list of browsers and mobile devices.;
          #   @option arguments [String] :ids Objects IDs separated by commas. If the parameter is passed, 'q, country, cities' should not be passed.
          #   @option arguments [String] :q Filter-line of the request (for countries, regions, cities, streets, schools, interests, positions).
          #   @option arguments [Integer] :country ID of the country objects are searched in.
          #   @option arguments [String] :cities IDs of cities where objects are searched in, separated with a comma.
          #   @option arguments [String] :lang Language of the returned string values. Supported languages:; *ru — Russian;; *ua — Ukrainian;; *en — English.;
          #   @return [Ads::Methods::GetSuggestions]

          # @!group Arguments

          # @return [String] Section, suggestions are retrieved in. Available values:; *countries — request of a list of countries. If q is not set or blank, a short list of countries is shown. Otherwise, a full list of countries is shown.; *regions — requested list of regions.  'country' parameter is required.; *cities — requested list of cities. 'country' parameter is required.; *districts — requested list of districts.  'cities' parameter is required.; *stations — requested list of subway stations.  'cities' parameter is required.; *streets — requested list of cities. 'cities' parameter is required.; *schools — requested list of educational organizations.  'cities' parameter is required.; *interests — requested list of interests.; *positions — requested list of positions (professions).; *group_types — requested list of group types.; *religions — requested list of religious commitments.; *browsers — requested list of browsers and mobile devices.;
          attribute :section, API::Types::Coercible::String.optional
          # @return [String] Objects IDs separated by commas. If the parameter is passed, 'q, country, cities' should not be passed.
          attribute :ids, API::Types::Coercible::String.optional
          # @return [String] Filter-line of the request (for countries, regions, cities, streets, schools, interests, positions).
          attribute :q, API::Types::Coercible::String.optional
          # @return [Integer] ID of the country objects are searched in.
          attribute :country, API::Types::Coercible::Int.optional
          # @return [String] IDs of cities where objects are searched in, separated with a comma.
          attribute :cities, API::Types::Coercible::String.optional
          # @return [String] Language of the returned string values. Supported languages:; *ru — Russian;; *ua — Ukrainian;; *en — English.;
          attribute :lang, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
