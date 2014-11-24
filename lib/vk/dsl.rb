# coding: utf-8
require 'vk'

module Vk
  module DSL
  end
end

require 'vk/dsl/database'
require 'vk/dsl/friends'
require 'vk/dsl/groups'
require 'vk/dsl/wall'
require 'vk/dsl/photos'
require 'vk/dsl/newsfeed'
require 'vk/dsl/users'

module Vk::DSL
  include Database
  include Friends
  include Groups
  include Wall
  include Photos
  include Newsfeed
  include Users
end
