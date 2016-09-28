# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Note < Vk::Schema::Object
        # @return [Integer] Note ID
        attribute :id, API::Types::Coercible::Int
        # @return [Integer] Note owner's ID
        attribute :owner_id, API::Types::Coercible::Int
        # @return [Integer] Comments number
        attribute :comments, API::Types::Coercible::Int
        # @return [API::Base::BoolInt] Information whether current user can comment the note
        attribute :can_comment, API::Base::BoolInt.optional
        # @return [Integer] Date when the note has been created in Unixtime
        attribute :date, API::Types::Coercible::Int
        # @return [String] Note title
        attribute :title, API::Types::Coercible::String
        # @return [String] Note text
        attribute :text, API::Types::Coercible::String.optional
        # @return [String] Note text in wiki format
        attribute :text_wiki, API::Types::Coercible::String.optional
        # @return [String] URL of the page with note preview
        attribute :view_url, API::Types::Coercible::String
      end
    end
  end
end
