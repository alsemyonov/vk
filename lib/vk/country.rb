# frozen_string_literal: true
require 'vk/base'

module Vk
  class Country < Base
    self.fields = [:id, :title]

    # @return [<Vk::Region>]
    def regions
      @regions ||= loader.get_regions(id).all
    end

    # @return [String]
    def to_s
      title.to_s
    end

    protected

    def load_data(_options = {})
      @attributes = @attributes.merge(loader.get_country_by_id(id))
    end
  end
end
