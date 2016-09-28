# coding: utf-8
# frozen_string_literal: true
require 'vk'

module Vk
  # Class for requesting vk.com api data
  # @author Alexander Semyonov
  class Error < StandardError
    def initialize(message, details = {})
      if message.is_a?(Hash)
        details = message
        message = message['error']['error_msg']
      end
      super(message)
      @details = details
    end

    # @return [Hash, nil]
    attr_reader :details
  end

  class TooMuchArguments < Error
    # @param [String] method
    # @param [String] argument
    # @param [Integer] count
    def initialize(method, argument, count)
      super("Argument #{argument.inspect} of method #{method.inspect} cannot contain more than #{count} values")
    end
  end
end
