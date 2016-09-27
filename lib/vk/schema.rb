# frozen_string_literal: true
require 'vk'

module Vk
  class Schema
    autoload :Generator, 'vk/schema/generator'
    autoload :Definition, 'vk/schema/definition'
    autoload :Models, 'vk/schema/models'
    autoload :Types, 'vk/schema/types'

    autoload :Objects, 'vk/schema/objects'
    autoload :Methods, 'vk/schema/methods'

    def initialize(schema:)
      @json = JSON.parse(File.read(schema))
    end

    # @return [Hash{String => String, Hash}]
    attr_reader :json
  end
end
