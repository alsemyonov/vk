# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Doc < Vk::Schema::Object
        # @return [Integer] Document ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Document owner ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [String] Document title
        attribute :title, API::Types::Coercible::String
        # @return [Integer] File size in bites
        attribute :size, API::Types::Coercible::Int
        # @return [String] File extension
        attribute :ext, API::Types::Coercible::String
        # @return [String] File URL
        attribute :url, API::Types::Coercible::String.optional
        # @return [Integer] Date when file has been uploaded in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [Integer] Document type
        attribute :type, API::Types::Coercible::Int
        # @return [Object] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :preview, API::Types::Coercible::Hash.optional
        # @return [String] Access key for the document
        attribute :access_key, API::Types::Coercible::String.optional
      end
    end
  end
end
