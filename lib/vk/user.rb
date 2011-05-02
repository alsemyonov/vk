require 'vk/base'

module Vk
  class User < Base
    self.key_field = :uid
    self.fields = [:uid, :first_name, :last_name, :nickname, :domain, :sex, :bdate, :birthdate, :city, :country, :timezone, :photo, :photo_medium, :photo_big, :has_mobile, :rate, :contacts, :education, :online]

    class << self
      def find_all(ids, options = {})
        loader.get_profiles(ids, options).map do |profile|
          new(profile['uid'], data: profile)
        end
      end
    end

    def name
      "#{first_name} #{last_name}"
    end

    def city_id
      read_attribute(:city)
    end

    def city
      Vk::City.find(city_id)
    end

    def country_id
      read_attribute(:country)
    end

    def country
      Vk::Country.find(country_id)
    end

    def friend_ids
      @friend_ids ||= loader.get_friends(uid)
    end

    def friends(options = {})
      @friends ||= User.find_all(friend_ids, options)
    end

    def to_s
      name
    end

    protected
    def load_data(options = {})
      @attributes = @attributes.merge(loader.get_profile(id, options))
    end
  end
end
