require 'active_support/core_ext/object/try'

module Vk
  extend self

  autoload :DSL,      'vk/dsl'
  autoload :Request,  'vk/request'

  autoload :Base,     'vk/base'
  autoload :User,     'vk/user'
  autoload :City,     'vk/city'
  autoload :Country,  'vk/country'

  class << self
    attr_accessor :app_id, :app_secret, :logger
  end

  # Request to vk.com API
  # @return [Vk::Request] Request object
  def request
    @request ||= Request.new
  end

  def log(text, severity = :debug)
    Vk.logger.try(severity, text)
  end

  def dsl!
    Request.dsl!
  end
end
