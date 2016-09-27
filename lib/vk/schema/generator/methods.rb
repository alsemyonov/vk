# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Methods < Common
        # @!attribute [r] schema
        #   @return [Vk::Schema]
        argument :schema

        def create_methods
          schema.methods.each do |method|
            Generator::Method.start([method])
          end
        end

        def create_methods_autoload
          overwrite_template('methods.tt', 'lib/vk/api/methods.rb')
        end
      end
    end
  end
end
