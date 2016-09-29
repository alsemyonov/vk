# coding: utf-8
# frozen_string_literal: true
require 'vk'

module Vk
  Error = Class.new(StandardError)
  UndefinedMethodError = Class.new(Error)

  class TooManyArgumentsError < Error
    # @param [String] method
    # @param [String] argument
    # @param [Integer] count
    def initialize(method, argument, count)
      super("Argument #{argument.inspect} of method #{method.inspect} cannot contain more than #{count} values")
    end
  end
end
