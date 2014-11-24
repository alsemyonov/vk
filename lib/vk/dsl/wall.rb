require 'vk/exceptions'

module Vk
  module DSL
    module Wall
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
    end
  end
end
