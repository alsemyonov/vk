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
  class Request
    VERSION = '5.7'
    SCHEME  = 'https'
    HOST    = 'api.vk.com'
    PATH    = '/method/'
    PORT    = 443

    class << self
      # Generates auth_key for viewer
      # @param [Fixnum, String] viewer_id viewer’s identifier
      def auth_key(viewer_id)
        Digest::MD5.hexdigest("#{Vk.app_id}_#{viewer_id}_#{Vk.app_secret}")
      end

      def authenticated?(viewer_id, auth_key)
        auth_key == self.auth_key(viewer_id)
      end

      def dsl!
        require 'vk/dsl'
        include Vk::DSL
      end
    end

    def initialize(access_token = nil)
      @access_token = access_token
    end

    attr_accessor :access_token

    def request(method_name, data = {})
      data.merge!(
        api_id: Vk.app_id,
        v: VERSION,
      )
      data[:access_token] = access_token if access_token
      Vk.log(data)
      url           = URI.parse("#{SCHEME}://#{HOST}:#{PORT}#{PATH}#{method_name}?#{data.to_query}")
      http_response = Net::HTTP.get_response(url).body
      json_response = JSON.parse(http_response)
      Vk.log(json_response)
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
