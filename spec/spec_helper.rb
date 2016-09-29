# frozen_string_literal: true
require 'bundler/setup'
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start
require 'vk'
require 'webmock/rspec'

Bundler.require(:development)

Vk.app_id = 2_311_992
Vk.app_secret = 'secret'

VK_AUTH_KEY = '44b0a08fcf4039bf7919132a777b23ef'
VK_VIEWER_ID = 34_160

RSpec.configure do |config|
  config.mock_with :rspec
end
