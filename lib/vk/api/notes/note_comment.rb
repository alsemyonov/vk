# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class NoteComment < Vk::Schema::Object
        # @return [Integer] Comment ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Comment author's ID
        attribute :uid, API::Types::Coercible::Int
        # @return [Integer] Note ID
        attribute :nid, API::Types::Coercible::Int
        # @return [Integer] Note ID
        attribute :oid, API::Types::Coercible::Int
        # @return [Integer] Date when the comment has beed added in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [String] Comment text
        attribute :message, API::Types::Coercible::String
        # @return [Integer] ID of replied comment
        attribute :reply_to, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
