# frozen_string_literal: true
require 'vk/schema'
require 'dry-struct'
require 'active_support/core_ext/hash/keys'

module Vk
  class Schema
    # @abstract
    class Method < Dry::Struct
      constructor_type :strict_with_defaults

      class << self
        # @return [Boolean]
        attr_accessor :open
        # @return [String]
        attr_accessor :method
      end

      # @return [String]
      def method
        self.class.method
      end

      # @param [Vk::Client] client
      # @return [Hash]
      def call(client)
        client.request(method, to_hash).deep_symbolize_keys
      end

      def to_hash
        super.each_with_object({}) do |(key, value), memo|
          memo[key] = value unless value.nil?
        end
      end
    end
  end
end
