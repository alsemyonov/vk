# frozen_string_literal: true
require 'vk/schema'
require 'json'
require 'pathname'

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
        options = {}
        Generator::Types.start([schema], options)
        Generator::Errors.start([schema], options)
        Generator::Objects.start([schema], options)
        Generator::Responses.start([schema], options)
        Generator::Methods.start([schema], options)
        Generator::Client.start([schema], options)
        system('bin/rubocop -a lib/vk/api')
      end
    end
  end
end
