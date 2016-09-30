# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Paragraphs < Vk::Schema::Object
        # @return [String] Rules paragraph
        attribute :paragraph, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
