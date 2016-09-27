# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Notes
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class NoteComment < Vk::Schema::Model
          # @return [Integer] Comment ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Comment author's ID
          attribute :uid, Schema::Types::Coercible::Int
          # @return [Integer] Note ID
          attribute :nid, Schema::Types::Coercible::Int
          # @return [Integer] Note ID
          attribute :oid, Schema::Types::Coercible::Int
          # @return [Integer] Date when the comment has beed added in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [String] Comment text
          attribute :message, Schema::Types::Coercible::String
          # @return [Integer] ID of replied comment
          attribute :reply_to, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
