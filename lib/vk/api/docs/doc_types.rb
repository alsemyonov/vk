# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class DocTypes < Vk::Schema::Object
        # @return [Integer] Doc type ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Doc type title
        attribute :title, API::Types::Coercible::String.optional
        # @return [Integer] Number of docs
        attribute :count, API::Types::Coercible::Int.optional
      end
    end
  end
end
