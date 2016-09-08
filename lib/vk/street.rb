require 'vk/base'

module Vk
  class Street < Base
    self.fields = [:id, :title]

    def to_s
      title
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_street_by_id(id))
    end
  end
end
