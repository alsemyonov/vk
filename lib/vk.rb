module Vk
  extend self

  autoload :DSL,      'vk/dsl'
  autoload :Request,  'vk/request'

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
