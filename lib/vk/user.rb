require 'vk/base'

module Vk
  class User < Base
    self.key_field = :uid
    self.fields = [:uid, :first_name, :last_name, :nickname, :domain, :sex, :bdate, :birthdate, :city, :country, :timezone, :photo, :photo_medium, :photo_big, :has_mobile, :rate, :contacts, :education, :online]

    class << self
      def find_all(ids, options = {})
        loaded_ids = ids & identity_map.keys
        ids_to_load = ids - loaded_ids
        identity_map.values_at(*loaded_ids).tap do |results|
          if ids_to_load.any?
            results += loader.get_profiles(ids_to_load, options).map do |profile|
              new(profile['uid'], data: profile)
            end
          end
        end
      end
    end

    attr_accessor :posts_count

    def name
      @name ||= "#{first_name} #{last_name}"
    end

    def city_id
      read_attribute(:city)
    end

    def city
      @city ||= Vk::City.find(city_id)
    end

    def country_id
      read_attribute(:country)
    end

    def country
      @country ||= Vk::Country.find(country_id)
    end

    def friend_ids
      @friend_ids ||= loader.get_friends(uid)
    end

    def friends(options = {})
      @friends ||= {}
      @friends[options] ||= User.find_all(friend_ids, options)
    end

    def to_s
      name
    end

    def wall(options = {})
      @wall ||= {}
      @wall[options] ||=
        begin
          count, *posts = loader.get_wall(id, options)
          Vk::Post::Wall.new(id, count, posts)
        end
    end

    alias posts wall

    def posts_count
      wall.count
    end

    protected

    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_profile(id, options))
    end
  end
end
