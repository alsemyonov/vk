require 'vk/base'

module Vk
  class Group < Base
    self.key_field = :id
    self.fields = [
      :id, :name, :screen_name, :is_closed, :type, :is_admin, :admin_level, :is_member,
      :photo_50, :photo_100, :photo_200,
      :city, :country, :place,  :description, :wiki_page, :members_count, :counters,
      :start_date, :finish_date, :can_post, :can_see_all_posts, :activity, :status,
      :contacts, :links, :fixed_post, :verified, :site
    ]

    def to_s
      name
    end

    # @return [Time]
    def start_at
      Time.at(start_date)
    end

    # @return [Time]
    def finish_at
      Time.at(finish_date)
    end

    def albums
      @albums ||= loader.get_albums("-#{id}")
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_group_by_id(id, options)) unless @attributes.size > 1
    end
  end
end
