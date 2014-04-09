require 'vk/base'

module Vk
  class Region < Base
    self.key_field = :id
    self.fields = [:id, :title, :country_id]

    def country
      @country ||= Vk::Country.find(country_id)
    end

    def to_s
      title
    end
  end
end
