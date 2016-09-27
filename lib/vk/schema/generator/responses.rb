# frozen_string_literal: true
require 'vk/schema/generator/common'

module Vk
  class Schema
    class Generator
      class Responses < Common
        # @!attribute [r] schema
        #   @return [Vk::Schema]
        argument :schema

        def create_methods
          schema.responses.each do |method|
            Generator::Response.start([method])
          end
        end

        def create_methods_autoload
          overwrite_template('responses.tt', 'lib/vk/api/responses.rb')
        end
      end
    end
  end
end
