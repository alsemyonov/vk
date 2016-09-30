# frozen_string_literal: true
require 'active_support/core_ext/object/try'
require 'vk/error'
require 'vk/version'

# Module enclosing vk.com API client & related objects
module Vk
  autoload :Access, 'vk/access'
  autoload :API, 'vk/api'
  autoload :Client, 'vk/client'
  autoload :Error, 'vk/error'
  autoload :Logging, 'vk/logging'
  autoload :Prompt, 'vk/prompt'
  autoload :Result, 'vk/result'
  autoload :Schema, 'vk/schema'

  class << self
    # @return [String]
    attr_accessor :app_id
    # @return [String]
    attr_accessor :app_secret
  end

  extend Logging
  include Logging

  module_function

  # @return [Vk::Client] API Client
  def client(access_token = ENV['VK_ACCESS_TOKEN'])
    @client ||= Client.new(access_token)
  end
end
