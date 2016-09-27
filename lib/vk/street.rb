# frozen_string_literal: true
require 'vk/base'

module Vk
  class Street < Base
    self.fields = [:id, :title]

    def to_s
      title
    end

    protected

    def load_data(_options = {})
      @attributes = @attributes.merge(loader.get_street_by_id(id))
    end
  end
end
