require 'vk/base'

module Vk
  class City < Base
    self.key_field = :id
    self.fields = [:id, :title, :important, :country_id, :region_id, :region, :area]

    def country
      @country ||= Vk::Country.find(country_id) if country_id
    end

    # def region
    #   @region ||= Vk::Region.find(region_id) if region_id
    # end

    def to_s
      title
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_city_by_id(id)) if id
    end
  end
end
