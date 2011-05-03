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

  def request
    @request ||= Request.new
  end

  def log(text, severity = :debug)
    Vk.logger && Vk.logger.send(severity, text)
  end

  def dsl!
    Request.dsl!
  end
end
