# frozen_string_literal: true
require 'thor'
require 'fileutils'
require 'active_support'
require 'active_support/core_ext/string/inflections'
require 'vk/schema/generator'
require 'vk/schema/definition'

module Vk
  class Schema
    class Generator
      class Common < Thor::Group
        include Thor::Actions

        # @!attribute [r] schema
        #   @return [Vk::Schema]

        # @return [String]
        def self.source_root
          Pathname.new(File.expand_path('../../templates', __FILE__))
        end

        # Provides methods for building class and specification for provided
        # definition
        def self.create_definition
          name = self.name.demodulize.underscore
          template_name = "#{name}.tt"
          spec_template_name = "#{name}_spec.tt"

          define_method(:"create_#{name}") do
            overwrite_template(template_name, definition.definition_file)
          end if (source_root / template_name).exist?

          define_method(:"create_#{name}_spec") do
            overwrite_template(spec_template_name, definition.spec_file)
          end if (source_root / spec_template_name).exist?
        end

        private

        # Removes template before regeneration
        # @param [String] source
        # @param [String] destination
        # @param [<Object>] args
        # @param [Proc] block
        def overwrite_template(source, destination, *args, &block)
          FileUtils.rm(destination) if File.exist?(destination)
          template(source, destination, *args, &block)
        end
      end
    end
  end
end
