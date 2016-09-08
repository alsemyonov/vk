require 'vk/base'

module Vk
  class Group < Base
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
      Time.at(start_date) if start_date
    end

    # @return [Time]
    def finish_at
      Time.at(finish_date) if finish_date
    end

    # @return [Vk::Album]
    def albums
      @albums ||= loader.get_albums("-#{id}").all
    end

    # @return [Vk::Audio::Album]
    def audio_albums
      @audio_albums ||= loader.get_audio_albums("-#{id}").all
    end

    def get_wall(options = {})
      loader.get_wall("-#{id}", options)
    end

    protected

    def load_data(options = {fields: self.class.fields})
      @attributes = @attributes.merge(loader.get_group_by_id(id, options)) unless @attributes.size > 1
    end
  end
end
