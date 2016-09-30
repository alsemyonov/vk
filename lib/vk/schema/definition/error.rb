# frozen_string_literal: true
require 'vk/schema/definition'

module Vk
  class Schema
    class Definition
      class Error < self
        # @return [String]
        def type_name
          name.camelize
        end

        # @return [String]
        def code
          definition['code']
        end
      end
    end
  end
end
