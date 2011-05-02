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
    VERSION = '3.0'
    SCHEME  = 'http'
    HOST    = 'api.vk.com'
    PATH    = '/api.php'
    PORT    = 80

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

    def request(method_name, data = {})
      data.merge!(
        api_id: Vk.app_id,
        format: :json,
        method: method_name,
        v:      VERSION
      )
      url           = URI.parse("#{SCHEME}://#{HOST}:#{PORT}#{PATH}?#{data.to_query}&sig=#{signature(data)}")
      http_response = Net::HTTP.get_response(url).body
      json_response = JSON.parse(http_response)
      puts(json_response)
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
