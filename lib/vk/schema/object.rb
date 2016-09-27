# frozen_string_literal: true
require 'vk/schema'
require 'dry-struct'

module Vk
  class Schema
    # @abstract
    class Object < Dry::Struct
      constructor_type :schema
    end
  end
end
