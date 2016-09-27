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

        # @return [String]
        def self.source_root
          File.expand_path('../templates', __FILE__)
        end

        private

        def overwrite_template(source, destination, *args, &block)
          FileUtils.rm(destination) if File.exist?(destination)
          template(source, destination, *args, &block)
        end
      end
    end
  end
end
