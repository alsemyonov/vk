# frozen_string_literal: true
require 'active_support/core_ext/object/try'
require 'vk/error'
require 'vk/version'

# Module enclosing vk.com API client & related objects
module Vk
  autoload :Access, 'vk/access'
  autoload :Client, 'vk/client'
  autoload :Error, 'vk/error'
  autoload :Prompt, 'vk/prompt'
  autoload :Result, 'vk/result'

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

  def log!
    require 'logger'
    self.logger = Logger.new STDOUT
  end
end
