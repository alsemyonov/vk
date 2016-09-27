# frozen_string_literal: true
require 'vk/schema'

module Vk
  class Schema
    class Methods < self
      # @param [String] schema
      def initialize(schema: 'data/schema/methods.json')
        super
      end

      def errors
        json['errors'].map do |error|
          Definition::Error.new(error['name'], error, self)
        end
      end
    end
  end
end
