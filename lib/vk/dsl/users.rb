# frozen_string_literal: true
require 'vk/error'
require 'active_support/core_ext/array/wrap'

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
        (request('users.get', options) || []).map do |user|
          Vk::User.new(user)
        end
      end

      # @param [String] user_id
      # @param [Hash] options
      # @return [Vk::User]
      def get_user(user_id, options = {})
        get_users(user_id, options).first
      end

      # @return [Vk::User]
      def get_me
        @me ||= Vk::User.new(request('users.get').first)
      end
    end
  end
end
