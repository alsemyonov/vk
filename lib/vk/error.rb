# coding: utf-8
# frozen_string_literal: true
require 'vk'

module Vk
  # @author Alexander Semyonov
  class Error < StandardError
    def initialize(msg, details = {})
      if msg.is_a?(Hash)
        details = msg
        msg = msg['error']['error_msg']
      end
      super(msg)
      @details = details
    end

    attr_reader :details
  end
end
