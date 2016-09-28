# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Rules < Vk::Schema::Object
        # @return [String] Comment
        attribute :title, API::Types::Coercible::String.optional
        # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :paragraphs, API::Types::Coercible::Array.member(API::Ads::Paragraphs).optional
      end
    end
  end
end
