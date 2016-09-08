require 'vk/exceptions'

module Vk
  module DSL
    module Database
      # @param [Hash] options
      # @option options :need_all [Boolean, 1] load all countries
      # @option options :code [<String>] country codes to load
      # @option options :offset [Fixnum] offset for loaded countries
      # @option options :count [Fixnum] (100) amount of countries to load
      def get_countries(options = {})
        options[:need_all] = 1 if options[:need_all]
        options[:code] = options[:code].join(',') if options[:code]
        Vk::Result.new('database.getCountries', Vk::Country, options)
      end

      # Countries’ names
      # @param [Array<Fixnum>, Fixnum] country_ids cities identifiers
      # @return [Array<Vk::Country>] array of Vk::Country
      def get_countries_by_id(country_ids)
        require 'vk/country'
        country_ids = Array(country_ids)
        raise Vk::TooMuchArguments.new('database.getCountriesById', 'country_ids', 1000) if country_ids > 1000
        request('database.getCountriesById', country_ids: country_ids.join(',')).map do |country|
          Vk::Country.new(country)
        end
      end

      # @param [String] country_id
      # @return [Vk::Country]
      def get_country_by_id(country_id)
        get_countries_by_id(country_id).first
      end

      alias get_country get_country_by_id

      # @param [Hash] options
      # @option options :country_id [<String>] required attribute. Country identifier
      # @option options :q [String] search query
      # @option options :offset [Fixnum] offset for loaded countries
      # @option options :count [Fixnum] (100) amount of countries to load
      # @return [Vk::Result<Vk::Region>]
      def get_regions(country_id, options = {})
        if country_id.is_a?(:hash)
          country_id = options.delete(:country_id) do
            raise 'No country_id attribute given for database.getRegions'
          end
        end
        require 'vk/region'
        options[:code] = options[:code].join(',') if options[:code]
        Vk::Result.new('database.getRegions', Vk::Region, options, country_id: country_id)
      end

      # Countries’ names
      # @param [Array<Fixnum>, Fixnum] street_ids cities identifiers
      # @return [Array<Vk::Country>] array of Vk::Country
      def get_streets_by_id(street_ids)
        require 'vk/street'
        street_ids = Array(street_ids)
        raise Vk::TooMuchArguments.new('database.getCountriesById', 'street_ids', 1000) if street_ids > 1000
        request('database.getCountriesById', street_ids: street_ids.join(',')).map do |street|
          Vk::Street.new(street)
        end
      end

      # @param [Fixnum] street_id
      def get_street_by_id(street_id)
        get_streets_by_id(street_id).first
      end

      alias get_street get_street_by_id

      # Cities’ names
      # @param [Array<Fixnum>, Fixnum] city_ids cities identifiers
      # @return [Array<Hash>] hash with city identifier and it’s name
      def get_cities_by_id(city_ids)
        require 'vk/city'
        city_ids = Array(city_ids)
        raise Vk::TooMuchArguments.new('database.getCitiesById', 'city_ids', 1000) if city_ids > 1000
        request('database.getCitiesById', city_ids: city_ids.join(',')).map do |city|
          Vk::City.new(city)
        end
      end

      # @return [Vk::City]
      def get_city_by_id(cid)
        get_cities_by_id(cid).first
      end

      alias get_city get_city_by_id

      # @param [Hash] options
      # @option options :country_id [<String>] required attribute. Country identifier
      # @option options :region_id [<String>] optional attribute. Region identifier
      # @option options :q [String] search query
      # @option options :offset [Fixnum] offset for loaded countries
      # @option options :count [Fixnum] (100) amount of countries to load
      def get_cities(options = {})
        require 'vk/city'
        raise 'No country_id attribute given for database.getRegions' unless options[:country_id]
        options[:code] = options[:code].join(',') if options[:code]
        Vk::Result.new('database.getCities', Vk::City, options,
                       country_id: options[:country_id],
                       region_id: options[:region_id])
      end
    end
  end
end
