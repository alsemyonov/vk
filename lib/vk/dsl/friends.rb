require 'vk/exceptions'

module Vk
  module DSL
    module Friends
      # Friends information
      # @param [Fixnum] uid user identifier
      # @param [Hash] options
      # @option options [Array<String>] :fields ([:user_id, :first_name, :last_name]) what fields to request
      # @option options [Fixnum] :count how many friends to request
      # @option options [Fixnum] :offset offset of friends to request
      def get_friends(uid, options = {})
        request('friends.get', options.merge(uid: uid))
      end
    end
  end
end
