# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Docs
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Doc < Vk::Schema::Model
          # @return [Integer] Document ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Document owner ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [String] Document title
          attribute :title, Schema::Types::Coercible::String
          # @return [Integer] File size in bites
          attribute :size, Schema::Types::Coercible::Int
          # @return [String] File extension
          attribute :ext, Schema::Types::Coercible::String
          # @return [String] File URL
          attribute :url, Schema::Types::Coercible::String.optional
          # @return [Integer] Date when file has been uploaded in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [Integer] Document type
          attribute :type, Schema::Types::Coercible::Int
          # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :preview, Schema::Types::Coercible::Hash.optional
          # @return [String] Access key for the document
          attribute :access_key, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
