module Vk
  extend self

  autoload :DSL, 'vk/dsl'
  autoload :Request, 'vk/request'

  def request
    @request ||= Request.new
  end

  def dsl!
    Request.dsl!
  end
end
