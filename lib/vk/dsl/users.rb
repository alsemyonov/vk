require 'vk/exceptions'

module Vk
  module DSL
    module Users
      # Have user installed app?
      # @param  [String] user_id user’s identifier
      # @return [Boolean] does user installed app
      def app_user?(user_id)
        request('users.isAppUser', user_id: user_id) == '1'
      end

      def get_users(user_ids, options = {})
        options[:user_ids] = Array.wrap(user_ids).join(',')
        (request('users.get', options) || []).map { |user| Vk::User.new(user) }
      end

      # @param [String] user_id
      # @param [Hash] options
      # @return [Vk::User]
      def get_user(user_id, options = {})
        get_users(user_id, options).first
      end
    end
  end
end
