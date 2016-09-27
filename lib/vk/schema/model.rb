# frozen_string_literal: true
require 'vk/schema'
require 'dry-struct'

module Vk
  class Schema
    class Model < Dry::Struct
    end
  end
end

require 'vk/schema/models'
