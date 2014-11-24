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
    end
  end
end
