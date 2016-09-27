# frozen_string_literal: true
require 'vk'
require 'active_support/concern'

module Vk
  begin
    require 'tty-prompt'
    Prompt = TTY::Prompt
  rescue LoadError
    class Prompt
      # @param [String] message
      # @param [Hash] _options
      def say(message = '', _options = {})
        puts(message)
      end

      def ask(message = '', *_args, &_block)
        print(message << ' ')
        gets.chomp
      end
    end
  end

  module PromptExtension
    extend ActiveSupport::Concern

    module ClassMethods
      # @return [TTY::Prompt]
      def prompt
        @prompt ||= Prompt.new
      end
      attr_writer :prompt
    end

    private

    # @return [TTY::Prompt]
    def prompt
      @prompt ||= self.class.prompt
    end

    attr_writer :prompt
  end
end
