# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class AttachedNote < Vk::Schema::Object
        # @return [Integer] Note ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Note owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [Integer] Comments number
        attribute :comments, API::Types::Coercible::Int
        # @return [Integer] Read comments number
        attribute :read_comments, API::Types::Coercible::Int
        # @return [Integer] Date when the note has been created in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [String] Note title
        attribute :title, API::Types::Coercible::String
        # @return [String] URL of the page with note preview
        attribute :view_url, API::Types::Coercible::String
      end
    end
  end
end
