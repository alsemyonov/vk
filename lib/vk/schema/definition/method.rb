# frozen_string_literal: true
require 'vk/schema/definition/constant'

module Vk
  class Schema
    class Definition
      class Method < Constant
        include HasAttributes

        def self.namespace_splitter
          @namespace_splitter ||= /\./
        end

        def initialize(name, definition, schema)
          super
          @original_method = @name
          @name = @name.underscore
        end

        # @return [String]
        def require
          "vk/api/#{@namespace}/methods/#{@name}"
        end

        def method
          "'#{@namespace}.#{@original_method}'"
        end

        def response_class
          "Vk::API::#{namespace}::Responses::#{type_name}Response"
        end

        # @return [Boolean]
        def open
          definition['open'] ? :true : :false
        end
      end
    end
  end
end
