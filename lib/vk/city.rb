# frozen_string_literal: true
require 'vk/base'

module Vk
  class City < Base
    self.fields = [:id, :title, :important, :country_id, :region_id, :region, :area]

    # @return [Vk::Country, nil]
    def country
      @country ||= Vk::Country.find(country_id) if country_id
    end

    # @return [Vk::Region, nil]
    def region
      @region ||= Vk::Region.find(region_id) if region_id
    end

    # @return [String]
    def to_s
      title.to_s
    end

    protected

    def load_data(_options = {})
      @attributes = @attributes.merge(loader.get_city_by_id(id)) if id
    end
  end
end
