require 'active_support/core_ext/object/try'
require 'vk/exceptions'

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

  class << self
    attr_accessor :app_id, :app_secret
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
  def client(access_token = nil)
    @client ||= Client.new(access_token)
  end

  def log(text, severity = :debug)
    Vk.logger.try(severity, text)
  end

  def dsl!
    Client.dsl!
  end

  def log!
    require 'logger'
    self.logger = Logger.new STDOUT
  end

  dsl!
end
