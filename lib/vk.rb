module Vk
  extend self

  autoload :DSL,      'vk/dsl'
  autoload :Request,  'vk/request'

  autoload :Base,     'vk/base'
  autoload :User,     'vk/user'
  autoload :City,     'vk/city'
  autoload :Country,  'vk/country'

  class << self
    attr_accessor :app_id, :app_secret
  end

  def request
    @request ||= Request.new
  end

  def dsl!
    Request.dsl!
  end
end
