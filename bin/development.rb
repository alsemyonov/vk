# frozen_string_literal: true
require 'bundler/setup'
require 'dotenv'
Dotenv.load('.env')
require 'pry'
begin
  require 'pry-byebug'
rescue LoadError
  STDERR.puts 'Byebug is enabled only in Ruby 2'
end
require 'pp'

require 'vk'

Vk.app_id = ENV['VK_APP_ID']
Vk.app_secret = ENV['VK_APP_SECRET']
Vk.log!
