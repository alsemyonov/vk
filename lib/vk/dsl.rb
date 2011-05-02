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
    # @option options [:uid, :first_name, :last_name, :nickname, :domain, :sex, :bdate, :birthdate, :city, :country, :timezone, :photo, :photo_medium, :photo_big, :has_mobile, :rate, :contacts, :education, :online] :fields ([:uid, :first_name, :last_name]) profile fields to requests
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
      get_profiles(uid, options)[0]
    end

    ## Identifiers of groups in which user participates
    ## @param [Integer] uid user’s identifier
    ## @return [Array] array of group identifiers
    #def get_groups(uid)
      #request('getGroups', uid: uid)
    #end

    # Cities’ names
    # @param [Array<Fixnum>, Fixnum] cids cities identifiers
    # @return [Array<Hash>] hash with city identifier and it’s name
    def get_cities(cids)
      cids = Array(cids).join(',')
      request('getCities', cids: cids)
    end

    def get_city(cid)
      get_cities(cid)[0]
    end

    # Countries’ names
    # @param [Array<Fixnum>, Fixnum] cids cities identifiers
    # @return [Array<Hash>] hash with city identifier and it’s name
    def get_countries(cids)
      cids = Array(cids).join(',')
      request('getCountries', cids: cids)
    end

    def get_country(cid)
      get_countries(cid)[0]
    end

    # Friends information
    # @param [Fixnum] uid user identifier
    # @param [Hash] options
    # @option options [Array<String>] :fields ([:uid, :first_name, :last_name]) what fields to request
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
      request('wall.get', options.merge(owner_id: uid))
    end
  end
end
