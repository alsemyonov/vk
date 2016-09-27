# frozen_string_literal: true
require 'vk'
require 'vk/prompt'
require 'oauth2'

module Vk
  class Client
    class OAuth2 < ::OAuth2::Client
      DEFAULT_OAUTH_OPTIONS = {
        site: 'https://api.vk.com',
        authorize_url: 'https://oauth.vk.com/authorize',
        token_url: 'https://oauth.vk.com/access_token'
      }.freeze

      include Vk::PromptExtension

      def initialize(app_id = Vk.app_id, app_secret = Vk.app_secret, options = DEFAULT_OAUTH_OPTIONS)
        super(app_id, app_secret, options)
      end

      # @return [String]
      def get_auth_code
        url = auth_code.authorize_url(
          redirect_uri: 'https://oauth.vk.com/blank.html',
          display: 'page',
          scope: Vk::Access::SCOPES.values.inject(0, :+)
        )
        prompt.say 'Open a link and allow access:'
        prompt.say
        prompt.say "    #{url}"
        prompt.say
        prompt.ask('Enter the code from the address of the opened page:')
      end

      # @return [OAuth2::AccessToken]
      def get_access_token
        auth_code.get_token(
          get_auth_code,
          redirect_uri: 'https://oauth.vk.com/blank.html'
        )
      end
    end
  end
end
