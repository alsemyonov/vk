# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class PostSource < Vk::Schema::Model
          # @return [String] Type of post source
          attribute :type, Schema::Types::Coercible::String.optional
          # @return [String] Platform name
          attribute :platform, Schema::Types::Coercible::String.optional
          # @return [String] Additional data
          attribute :data, Schema::Types::Coercible::String.optional
          # @return [String] URL to an external site used to publish the post
          attribute :url, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
