require 'vk/base'

module Vk
  class User < Base
    self.key_field = :id
    self.fields = %i(sex bdate city country photo_50 photo_100 photo_200_orig photo_200 photo_400_orig photo_max photo_max_orig photo_id online online_mobile domain has_mobile contacts connections site education universities schools can_post can_see_all_posts can_see_audio can_write_private_message status last_seen common_count relation relatives counters screen_name maiden_name timezone occupation activities interests music movies tv books games about quotes personal)

    class << self
      def find_all(ids, options = {})
        loaded_ids = ids & identity_map.keys
        ids_to_load = ids - loaded_ids
        identity_map.values_at(*loaded_ids).tap do |results|
          if ids_to_load.any?
            results += loader.get_users(ids_to_load, options).map do |profile|
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

    # @param [Hash] options
    # @see Vk::Request.get_groups
    # @return [<Vk::Group>]
    def groups(options = {})
      @groups ||= {}
      options[:extended] = true
      index = options.hash
      @groups[index] ||= loader.get_groups(id, options)
      logger.debug(@groups[index])
      @groups[index].all
    end

    protected

    def load_data(options = { fields: self.class.fields })
      @attributes = @attributes.merge(loader.get_user(id, options))
    end
  end
end
