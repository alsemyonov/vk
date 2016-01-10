require 'vk/base'

module Vk
  class User < Base
    RELATION_MAPPING = {
      0 => nil,
      1 => :single,
      2 => :friendship,
      3 => :plight,
      4 => :married,
      5 => :complicated,
      6 => :looking,
      7 => :love
    }

    self.key_field = :id
    self.fields = %i(id first_name last_name deactivated hidden sex bdate city country photo_50 photo_100 photo_200_orig photo_200 photo_400_orig photo_max photo_max_orig photo_id online online_mobile domain has_mobile contacts connections site education universities schools can_post can_see_all_posts can_see_audio can_write_private_message status last_seen common_count relation relatives counters screen_name maiden_name timezone occupation activities interests music movies tv books games about quotes personal)

    def self.find_all(ids, options = {})
      loaded_ids = ids & identity_map.keys
      ids_to_load = ids - loaded_ids
      identity_map.values_at(*loaded_ids).tap do |results|
        if ids_to_load.any?
          results += loader.get_users(ids_to_load, options).map do |profile|
            new(profile['id'], data: profile)
          end
        end
      end
    end

    attr_accessor :posts_count

    # @return [String]
    def name
      @name ||= "#{first_name} #{last_name}"
    end

    # @return [Date]
    def born_on
      @born_on ||= Date.strptime(bdate, '%d.%m.%Y') if born_on?
    end

    def born_on?
      read_attribute(:bdate).to_s.split(/\./).size == 3
    end

    # @return [:unknown, :female, :male]
    def gender
      {
        0 => :unknown,
        1 => :female,
        2 => :male
      }[sex]
    end

    # @return [Fixnum]
    def city_id
      read_attribute(:city)
    end

    # @return [Vk::City]
    def city
      @city ||= Vk::City.find(city_id)
    end

    # @return [Fixnum]
    def country_id
      read_attribute(:country)
    end

    # @return [Vk::Country]
    def country
      @country ||= Vk::Country.find(country_id)
    end

    # @return [<Fixnum>]
    def friend_ids(options = {})
      @friend_ids ||= loader.get_friends(id, options = {})
    end

    # @param [<Vk::User>] options
    def friends(options = {})
      @friends ||= {}
      @friends[options] ||=
        if options[:fields]
          loader.get_friends(id, options).all
        else
          User.find_all(friend_ids)
        end
    end

    # @return [<Vk::Photo>]
    def profile_photos
      @profile_photos ||= loader.get_photos(id, 'profile').all
    end

    # @return [Boolean]
    def deactivated?
      read_attribute(:deactivated)
    end

    def relation_type
      RELATION_MAPPING[relation]
    end

    # @return [Vk::User]
    def relation_partner
      partner = read_attribute(:relation_partner)
      Vk::User.new(partner) if partner
    end

    # @return [String]
    def to_s
      name
    end

    # @param [Vk::Wall] options
    def wall(options = {})
      @wall ||= {}
      @wall[options] ||=
        begin
          count, *posts = loader.get_wall(id, options)
          Vk::Post::Wall.new(id, count, posts)
        end
    end

    alias posts wall

    # @return [Fixnum]
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
