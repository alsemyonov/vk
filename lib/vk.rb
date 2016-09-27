# frozen_string_literal: true
require 'active_support/core_ext/object/try'
require 'vk/exceptions'
require 'vk/version'

# Module enclosing vk.com API client & related objects
module Vk
  autoload :Client, 'vk/client'
  autoload :DSL, 'vk/dsl'
  autoload :Error, 'vk/error'
  autoload :Result, 'vk/result'

  autoload :Base, 'vk/base'
  autoload :User, 'vk/user'
  autoload :City, 'vk/city'
  autoload :Country, 'vk/country'
  autoload :Post, 'vk/post'
  autoload :Stats, 'vk/stats'
  autoload :Group, 'vk/group'
  autoload :Album, 'vk/album'

  autoload :Schema, 'vk/schema'

  class << self
    # @return [String]
    attr_accessor :app_id
    # @return [String]
    attr_accessor :app_secret
  end

  # @return [Logger]
  def self.logger
    @logger ||=
      begin
        require 'logger'
        Logger.new(STDOUT)
      end
  end

  # @param [Logger] logger
  # @return [Logger]
  def self.logger=(logger)
    @logger = logger
  end

  module_function

  # Request to vk.com API
  # @return [Vk::Client] Request object
  def client(access_token = ENV['VK_ACCESS_TOKEN'])
    @client ||= Client.new(access_token)
  end

  # @return [Vk::Client]
  def dsl!
    Client.dsl!
  end

  def log!
    require 'logger'
    self.logger = Logger.new STDOUT
  end

  dsl!
end
