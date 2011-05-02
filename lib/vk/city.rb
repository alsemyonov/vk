require 'vk/base'

module Vk
  class City < Base
    self.key_field = :cid
    self.fields = [:cid, :name]

    def to_s
      name
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_city(id))
    end
  end
end
