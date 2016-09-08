# coding: utf-8
require 'vk'

require 'digest/md5'
require 'uri'
require 'net/http'

require 'active_support/core_ext/object/to_query'
require 'active_support/core_ext/object/blank'
require 'json'

module Vk
  # Class for requesting vk.com api data
  # @author Alexander Semyonov
  class Client
    SCHEME = 'https'
    HOST = 'api.vk.com'
    PATH = '/method/'
    PORT = 443

    # Generates auth_key for viewer
    # @param [Fixnum, String] viewer_id viewer’s identifier
    def self.auth_key(viewer_id)
      Digest::MD5.hexdigest("#{Vk.app_id}_#{viewer_id}_#{Vk.app_secret}")
    end

    def self.authenticated?(viewer_id, auth_key)
      auth_key == self.auth_key(viewer_id)
    end

    def self.dsl!
      require 'vk/dsl'
      include Vk::DSL
    end

    # @return [Vk::Client]
    def self.authenticated!
      require 'vk/access'
      return new(ENV['VK_ACCESS_TOKEN']) if ENV['VK_ACCESS_TOKEN']
      require 'oauth2'
      client = OAuth2::Client.new(
        Vk.app_id, Vk.app_secret,
        site: 'https://api.vk.com',
        authorize_url: 'https://oauth.vk.com/authorize',
        token_url: 'https://oauth.vk.com/access_token',
      )
      url = client.auth_code.authorize_url(
        redirect_uri: 'https://oauth.vk.com/blank.html',
        display: 'page',
        scope: Vk::Access::SCOPES.values.inject(0, :+)
      )
      puts "Open: #{url}"
      auth_code = gets.chomp

      token = client.auth_code.get_token(
        auth_code,
        redirect_uri: 'https://oauth.vk.com/blank.html'
      ) # => OAuth2::Response
      fail 'No token discovered' unless token.try(:token)
      puts "export VK_ACCESS_TOKEN=#{token.token}"
      Vk.client.access_token ||= token.token
      ENV['VK_ACCESS_TOKEN'] ||= token.token
      new
    end

    # @param [#to_s] access_token
    def initialize(access_token = ENV['VK_ACCESS_TOKEN'])
      @access_token = access_token.to_s
    end

    def dsl!
      self.class.dsl!
      self
    end

    # @return [String]
    attr_accessor :access_token

    def request(method_name, data = {})
      data = data.merge(app_id: Vk.app_id, v: Vk::VK_API)
      data = data.merge(access_token: access_token) if access_token.present?
      Vk.logger.info("vk.#{method_name}(#{data.inspect})")
      http_response = Net::HTTP.post_form(url_for_method(method_name), data).body
      return unless http_response.present?
      json_response = JSON.parse(http_response)
      if json_response['error']
        Vk.logger.error(json_response['error']['error_msg'])
        Vk.logger.debug(json_response)
        raise Vk::Error.new(json_response)
      end
      Vk.logger.debug(json_response)
      json_response['response']
    end

    # @param [URL::HTTP] method_name
    def url_for_method(method_name)
      URI.parse("#{SCHEME}://#{HOST}:#{PORT}#{PATH}#{method_name}")
    end

    def method_missing(method_name, options = {})
      request(method_name, options)
    end

    private

    def signature(data)
      signature = data.keys.sort.inject('') do |result, key|
        result << "#{key}=#{data[key]}"
      end << Vk.app_secret
      Digest::MD5.hexdigest(signature)
    end
  end
end
