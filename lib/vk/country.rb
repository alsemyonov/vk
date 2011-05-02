require 'vk/base'

module Vk
  class Country < Base
    self.key_field = :cid
    self.fields = [:cid, :name]

    def to_s
      name
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_country(id))
    end
  end
end
