# frozen_string_literal: true
require 'vk'
require 'logger'

module Vk
  # Logging for every class
  module Logging
    # @return [Logger]
    def logger
      @logger ||= if self.class.respond_to?(:logger)
                    self.class.logger
                  else
                    Logger.new(STDOUT)
                  end
    end

    attr_writer :logger
  end
end
