# frozen_string_literal: true
require 'vk'
require 'vk/base'
require 'active_support/core_ext/module/attribute_accessors'

module Vk
  module Stats
    TIME_FORMAT = '%Y-%m-%d'

    module_function

    mattr_accessor :loader

    self.loader = Vk.client

    # @param [Hash] options
    # @option options [Fixnum] :group_id
    # @option options [Fixnum] :app_id
    # @option options [#to_date] :date_from
    # @option options [#to_date] :date_to
    def get(options = {})
      options[:date_from] = options[:date_from].to_date.strftime(TIME_FORMAT) if options.key?(:date_from)
      options[:date_to] = options[:date_to].to_date.strftime(TIME_FORMAT) if options.key?(:date_to)
      result = loader.request('stats.get', options)
      result&.map { |period| Period.new(period['day'], data: period) }
    end

    class Period < Vk::Base
      self.key_field = :day
      self.fields = [
        :views, :visitors, :reach, :reach_subscribers, :subscribed, :unsubscribed, :sex, :age, :sex_age, :cities, :countries
      ]

      def date
        @date ||= Date.parse(read_attribute(:day))
      end

      def sex
        @sex ||= (read_attribute(:sex) || []).map do |sex|
          Vk::Stats::Sex.new(nil, data: sex) if sex
        end.compact
      end

      def age
        @age ||= (read_attribute(:age) || []).map do |age|
          Vk::Stats::Age.new(nil, data: age) if age
        end.compact
      end

      def sex_age
        @sex_age ||= (read_attribute(:sex_age) || []).map do |sex_age|
          Vk::Stats::SexAge.new(nil, data: sex_age) if sex_age
        end.compact
      end

      def cities
        @cities ||= (read_attribute(:cities) || []).map do |city|
          Vk::Stats::City.new(nil, data: city) if city
        end.compact
      end

      def countries
        @countries ||= (read_attribute(:countries) || []).map do |country|
          Vk::Stats::Country.new(nil, data: country) if country
        end.compact
      end

      private

      def load_data(*)
      end
    end

    class Sex < Vk::Base
      self.key_field = :value
      self.fields = [:visitors]
    end

    class Age < Vk::Base
      self.key_field = :value
      self.fields = [:visitors]
    end

    class SexAge < Vk::Base
      self.key_field = :value
      self.fields = [:visitors]

      def sex
        split_sex_age
        @sex
      end

      def age
        split_sex_age
        @age
      end

      private

      def split_sex_age
        return if @sex && @age
        @sex, @age = value.split(';')
      end
    end

    class City < Vk::Base
      self.key_field = :value
      self.fields = [:name, :visitors]
    end

    class Country < Vk::Base
      self.key_field = :value
      self.fields = [:name, :visitors, :code]
    end
  end
end
