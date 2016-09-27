# frozen_string_literal: true
require 'vk/schema'
require 'json'
require 'pathname'
require 'logger'

module Vk
  class Schema
    class Generator
      autoload :Client, 'vk/schema/generator/client'
      autoload :Common, 'vk/schema/generator/common'
      autoload :Errors, 'vk/schema/generator/errors'
      autoload :Method, 'vk/schema/generator/method'
      autoload :Methods, 'vk/schema/generator/methods'
      autoload :Object, 'vk/schema/generator/object'
      autoload :Objects, 'vk/schema/generator/objects'
      autoload :Response, 'vk/schema/generator/response'
      autoload :Responses, 'vk/schema/generator/responses'
      autoload :Type, 'vk/schema/generator/type'
      autoload :Types, 'vk/schema/generator/types'

      # @return [Vk::Schema]
      def schema
        @schema ||= Schema.new
      end

      def call
        Generator::Types.start([schema])
        Generator::Errors.start([schema])
        Generator::Objects.start([schema])
        Generator::Responses.start([schema])
        Generator::Methods.start([schema])
        Generator::Client.start([schema])
        system('bin/rubocop -a lib/vk/api')
      end

      private

      # @return [Logger]
      def logger
        @logger ||= Logger.new(STDOUT)
      end
    end
  end
end
