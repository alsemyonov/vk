require 'vk'
require 'vk/base'
require 'active_support/core_ext/class/attribute'

module Vk
  module Stats
    TIME_FORMAT = '%Y-%m-%d'

    module_function

    class_attribute :loader

    self.loader = Vk.request

    # @param [Hash] options
    # @option options [Fixnum] :group_id
    # @option options [Fixnum] :app_id
    # @option options [#to_date] :date_from
    # @option options [#to_date] :date_to
    def get(options = {})
      options[:date_from] = options[:date_from].to_date.strftime(TIME_FORMAT) if options.key?(:date_from)
      options[:date_to] = options[:date_to].to_date.strftime(TIME_FORMAT) if options.key?(:date_to)
    end

    class Period < Vk::Base
      self.key_field = :date
      self.fields = [
        :views, :visitors, :reach, :reach_subscribers, :sex, :age, :sex_age, :cities, :countries
      ]

      def sex
        @sex ||= read_attribute(:sex).map { |sex| Sex.new(sex) }
      end

      def age
        @age ||= read_attribute(:age).map { |age| Age.new(age) }
      end

      def sex_age
        @sex_age ||= read_attribute(:sex_age).map { |sex_age| SexAge.new(sex_age) }
      end

      def cities
        @cities ||= read_attribute(:cities).map { |city| City.new(city) }
      end

      def countries
        @countries ||= read_attribute(:countries).map { |city| Country.new(city) }
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
