# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Wall
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AttachedNote < Vk::Schema::Model
          # @return [Integer] Note ID
          attribute :id, Schema::Types::Coercible::Int
          # @return [Integer] Note owner's ID
          attribute :owner_id, Schema::Types::Coercible::Int
          # @return [Integer] Comments number
          attribute :comments, Schema::Types::Coercible::Int
          # @return [Integer] Read comments number
          attribute :read_comments, Schema::Types::Coercible::Int
          # @return [Integer] Date when the note has been created in Unixtime
          attribute :date, Schema::Types::Coercible::Int
          # @return [String] Note title
          attribute :title, Schema::Types::Coercible::String
          # @return [String] URL of the page with note preview
          attribute :view_url, Schema::Types::Coercible::String
        end
      end
    end
  end
end
