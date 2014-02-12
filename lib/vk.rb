require 'active_support/core_ext/object/try'

module Vk
  extend self

  autoload :DSL,      'vk/dsl'
  autoload :Request,  'vk/request'

  autoload :Base,     'vk/base'
  autoload :User,     'vk/user'
  autoload :City,     'vk/city'
  autoload :Country,  'vk/country'
  autoload :Post,     'vk/post'
  autoload :Stats,    'vk/stats'
  autoload :Group,    'vk/group'

  class << self
    attr_accessor :app_id, :app_secret, :logger
  end

  # Request to vk.com API
  # @return [Vk::Request] Request object
  def request(access_token = nil)
    @request ||= Request.new(access_token)
  end

  def log(text, severity = :debug)
    Vk.logger.try(severity, text)
  end

  def dsl!
    Request.dsl!
  end

  def log!
    require 'logger'
    self.logger = Logger.new STDOUT
  end
end
