# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Pages
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class WikipageVersion < Vk::Schema::Model
          # @return [Integer] Version ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Page size in bytes
          attribute :length, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when the page has been edited in Unixtime
          attribute :edited, Schema::Types::Coercible::Int.optional
          # @return [Integer] Last editor ID
          attribute :editor_id, Schema::Types::Coercible::Int.optional
          # @return [String] Last editor name
          attribute :editor_name, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
