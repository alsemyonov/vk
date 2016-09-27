# frozen_string_literal: true
require 'vk/schema'

module Vk
  class Schema
    class Namespace
      # @param [String] namespace
      # @param [Vk::Client] client
      def initialize(namespace, client)
        @namespace = namespace
        @client = client
      end

      # @return [Vk::Client]
      attr_reader :client

      # @param [String] method
      # @param [Hash] args
      # @return [Vk::Schema::Response]
      def call(method, args)
        method = method_classes[method].new(args)
        response = @client.request(method.method, method.to_hash)
        response_classes[method].new(response)
      end

      private

      # @return [{String => Vk::Schema::Method}]
      def method_classes
        @loaded_methods ||= Hash.new do |hash, method|
          method = method.underscore
          require "#{@namespace}/methods/#{method}"
          hash[method] = methods_module.const_get(method.camelcase)
        end
      end

      # @return [{String => Vk::Schema::Response}]
      def response_classes
        @loaded_methods ||= Hash.new do |hash, method|
          method = "#{method.underscore}_response"
          require "#{@namespace}/responses/#{method}"
          hash[method] = responses_module.const_get(method.camelcase)
        end
      end

      # @return [Module]
      def methods_module
        @methods_module ||= namespace_module.const_get(:Methods)
      end

      # @return [Module]
      def requests_module
        @requests_module ||= namespace_module.const_get(:Responses)
      end

      # @return [Module]
      def namespace_module
        @namespace_module ||= Vk::API.const_get(@namespace.camelcase)
      end
    end
  end
end
