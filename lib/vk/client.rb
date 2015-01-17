# coding: utf-8
require 'vk'

require 'digest/md5'
require 'uri'
require 'net/http'

require 'active_support/core_ext/object/to_query'
require 'json'

module Vk
  # Class for requesting vk.com api data
  # @author Alexander Semyonov
  class Client
    VERSION = '5.27'
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

    def initialize(access_token = nil)
      @access_token = access_token
    end

    def dsl!
      self.class.dsl!
      self
    end

    attr_accessor :access_token

    def request(method_name, data = {})
      data.merge!(
        api_id: Vk.app_id,
        v: VERSION,
      )
      data[:access_token] = access_token if access_token
      Vk.logger.info("#{method_name}(#{data.inspect})")
      url = URI.parse("#{SCHEME}://#{HOST}:#{PORT}#{PATH}#{method_name}")
      http_response = Net::HTTP.post_form(url, data).body
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

    def method_missing(method_name, options = {})
      request(method_name, options)
    end

    private

    def signature(data)
      signature = data.keys.sort.inject('') { |result, key| result << "#{key}=#{data[key]}" } << Vk.app_secret
      Digest::MD5.hexdigest(signature)
    end
  end
end
