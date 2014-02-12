require 'vk/base'

module Vk
  class Group < Base
    self.key_field = :id
    self.fields = [:id, :name, :screen_name, :is_closed, :is_admin, :is_member, :type, :photo_50, :photo_100, :photo_200]

    def to_s
      name
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_group(id, options)) unless @attributes.size > 1
    end
  end
end
