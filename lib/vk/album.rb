require 'vk/base'

module Vk
  class Album < Base
    self.key_field = :id
    self.fields = [
      :id, :thumb_id, :owner_id, :title, :description,
      :created, :updated, :size, :can_upload, :privacy_view, :privacy_comment,
      :thumb_src
    ]

    def to_s
      title.to_s
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_group_by_id(id, options)) unless @attributes.size > 1
    end
  end
end
