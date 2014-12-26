require 'vk/exceptions'

module Vk
  module DSL
    module Users
      # Have user installed app?
      # @param  [String] uid user’s identifier
      # @return [Boolean]             does user installed app
      def app_user?(uid)
        request('users.isAppUser', user_id: uid) == '1'
      end

      def get_users(user_ids, options: {})
        options[:user_ids] = Array.wrap(user_ids).join(',')
        (request('users.get') || []).map { |user| Vk::User.new(user) }
      end

      def get_user(user_id, options: {})
        get_users(user_id, options).first
      end
    end
  end
end
