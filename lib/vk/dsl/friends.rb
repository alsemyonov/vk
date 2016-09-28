# frozen_string_literal: true
require 'vk/error'

module Vk
  module DSL
    module Friends
      # Friends information
      # @param [Fixnum] user_id user identifier
      # @param [Hash] options
      # @option options [Array<String>] :fields ([:user_id, :first_name, :last_name]) what fields to request
      # @option options [Fixnum] :count how many friends to request
      # @option options [Fixnum] :offset offset of friends to request
      # @return [<Fixnum>, <Vk::User>]
      def get_friends(user_id, options = {})
        options[:user_id] = user_id

        if options[:fields]
          Vk::Result.new('friends.get', Vk::User, options).all
        else
          request('friends.get', options)['items']
        end
      end
    end
  end
end
