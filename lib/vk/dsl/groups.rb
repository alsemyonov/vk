require 'vk/exceptions'

module Vk
  module DSL
    module Groups
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
        Vk::Result.new('groups.get', Vk::Group, options)
      end

      # @param [String] group_ids
      # @param [Hash] options
      # @option options [<:city, :country, :place, :description, :wiki_page, :members_count, :counters, :start_date, :end_date, :can_post, :can_see_all_posts, :activity, :status, :contacts, :links, :fixed_post, :verified, :site, :can_create_topic>] :fields
      def get_groups_by_id(group_ids, options = {})
        options[:group_ids] = Array(group_ids).join(',')
        (request('groups.getById', options) || []).map { |group| Vk::Group.new(group) }
      end

      # @param [String] group_id
      # @param [Hash] options
      # @option options [<:city, :country, :place, :description, :wiki_page, :members_count, :counters, :start_date, :end_date, :can_post, :can_see_all_posts, :activity, :status, :contacts, :links, :fixed_post, :verified, :site, :can_create_topic>] :fields
      def get_group_by_id(group_id, options = {})
        get_groups_by_id(group_id, options).first
      end
      alias get_group get_group_by_id
    end
  end
end
