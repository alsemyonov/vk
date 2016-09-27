# frozen_string_literal: true
require 'vk/schema'
require 'json'
require 'pathname'
require 'logger'
require 'vk/schema/generator/model'

module Vk
  class Schema
    class Generator
      autoload :Common, 'vk/schema/generator/common'
      autoload :Model, 'vk/schema/generator/model'
      autoload :Models, 'vk/schema/generator/models'
      autoload :Type, 'vk/schema/generator/type'
      autoload :Types, 'vk/schema/generator/types'

      def initialize
        objects_schema
      end

      # @return [Schema::Objects]
      def objects_schema
        @objects_schema ||= Schema::Objects.new
      end

      def call
        objects_schema.types.each do |type|
          Generator::Type.start([type])
        end
        Generator::Types.start([objects_schema])
        objects_schema.objects.each do |object|
          Generator::Model.start([object])
        end
        Generator::Models.start([objects_schema])
        system(
          'bin/rubocop -a lib/vk/schema/model lib/vk/schema/models.rb ' \
            'lib/vk/schema/types lib/vk/schema/types.rb'
        )
      end

      private

      # @return [Logger]
      def logger
        @logger ||= Logger.new(STDOUT)
      end
    end
  end
end
