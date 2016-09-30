# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      class Constant < self
        def self.namespace_splitter
          @namespace_splitter ||= /_/
        end

        # @param [String] name
        # @param [Hash{String => String, Hash}] definition
        # @param [Vk::Schema] schema
        def initialize(name, definition, schema)
          super
          @namespace, @name = name.split(self.class.namespace_splitter, 2)
        end

        # @return [String]
        attr_reader :name

        # @return [String]
        def namespace
          @namespace.camelcase
        end

        # @return [String]
        def type_name
          @type_name ||= name.camelcase
        end

        # @return [String]
        def referenced_type_name
          "API::#{namespace}::#{type_name}"
        end

        # @return [String]
        def require
          "vk/api/#{@namespace}/#{@name}"
        end

        # @return [String]
        def definition_file
          "lib/#{require}.rb"
        end

        # @return [String]
        def spec_file
          "spec/#{require}_spec.rb"
        end
      end
    end
  end
end
