# coding: utf-8
require 'vk'

module Vk
  module DSL
    # Have user installed app?
    # @param  [String] uid user’s identifier
    # @return [Boolean]             does user installed app
    def app_user?(uid)
      request('isAppUser', uid: uid) == '1'
    end

    # Profile information for provided uids or domain names
    # @param [Array<String>] uids array of users’ identifiers in numbers or domain names
    # @param [Hash] options the options to request profile information
    # @option options [:user_id, :first_name, :last_name, :nickname, :domain, :sex, :bdate, :birthdate, :city, :country, :timezone, :photo, :photo_medium, :photo_big, :has_mobile, :rate, :contacts, :education, :online] :fields ([:user_id, :first_name, :last_name]) profile fields to requests
    # @option options [:nom, :gen, :dat, :acc, :ins, :abl] :name_case (:nom) case of returned names
    # @return [Array<Hash>] array of user profile data
    def get_profiles(uids, options = {})
      uids = Array(uids)
      if uids.first.to_i == 0
        options[:domains] = uids.join ','
      else
        options[:uids]    = uids.join ','
      end
      options[:fields] = Array(options[:fields]).join(',') if options.key?(:fields)
      request('getProfiles', options)
    end

    def get_profile(uid, options = {})
      get_profiles(uid, options).try(:first) || {}
    end

    # Identifiers of groups in which user participates
    # @param [Integer] user_id user’s identifier
    # @param [Hash] options
    # @option options [Boolean] :extended (0)
    # @option options [<:admin, :editor, :moder, :groups, :publics, :events>] :filter
    # @option options [<:city, :country, :place, :description, :wiki_page, :members_count, :counters, :start_date, :end_date, :can_post, :can_see_all_posts, :activity, :status, :contacts, :links, :fixed_post, :verified, :site, :can_create_topic>] :fields
    # @option options [Fixnum] :offset
    # @option options [Fixnum] :count
    # @return [Array] array of group identifiers
    def get_groups(user_id, options = {})
      options[:user_id] = user_id
      options[:extended] = !!options[:extended] ? 1 : 0 if options[:extended]
      options[:filter] = options[:filter].map(&:to_s).join(',') if options[:filter]
      options[:fields] = options[:fields].map(&:to_s).join(',') if options[:fields]
      request('groups.get', options)
    end

    def get_group(group_id, options = {})
      group_param = group_id.is_a?(Array) ? :group_ids : :group_id
      options[group_param] = group_id
      result = request('groups.getById', options)
      if group_param == :group_id
        result.first
      else
        result
      end
    end

    # Cities’ names
    # @param [Array<Fixnum>, Fixnum] city_ids cities identifiers
    # @return [Array<Hash>] hash with city identifier and it’s name
    def get_cities(city_ids)
      city_ids = Array(city_ids).join(',')
      request('getCities', cids: city_ids)
    end

    # @return [Vk::City]
    def get_city(cid)
      get_cities(cid).try(:first) || {}
    end

    # Countries’ names
    # @param [Array<Fixnum>, Fixnum] country_ids cities identifiers
    # @return [Array<Hash>] hash with city identifier and it’s name
    def get_countries(country_ids)
      country_ids = Array(country_ids).join(',')
      request('getCountries', cids: country_ids)
    end

    # @param [Fixnum] country_id
    def get_country(country_id)
      get_countries(country_id)[0]
    end

    # Friends information
    # @param [Fixnum] uid user identifier
    # @param [Hash] options
    # @option options [Array<String>] :fields ([:user_id, :first_name, :last_name]) what fields to request
    # @option options [Fixnum] :count how many friends to request
    # @option options [Fixnum] :offset offset of friends to request
    def get_friends(uid, options = {})
      request('friends.get', options.merge(uid: uid))
    end

    # Statuses from user’s wall
    # @param [Fixnum] uid user identifier
    # @param [Hash] options
    # @option options [Fixnum] :count how many statuses to request
    # @option options [Fixnum] :offset offset of statuses to request
    # @option options [:owner, :others, :all] :filter (:all) what kind of statuses to request
    # @return [Array<Fixnum, *Hash>] count of statuses and each status in hash
    def get_wall(uid, options = {})
      options[:filter] ||= :all
      request('wall.get', options.merge(owner_id: uid))
    end

    def get_wall_statuses(posts)
      request('wall.getById', posts: posts)
    end

    def get_wall_status(id)
      get_wall_statuses(id)[0]
    end
  end
end
