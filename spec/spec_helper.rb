require 'rubygems'
require 'bundler/setup'
require 'vk'

Bundler.require(:development)

Vk::Request.app_id = 2311992
Vk::Request.app_secret = 'secret'

VK_AUTH_KEY = '44b0a08fcf4039bf7919132a777b23ef'
VK_VIEWER_ID = 34160

RSpec.configure do |config|
  config.mock_with :rspec
end
