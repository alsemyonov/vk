# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Search < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Hint < Vk::Schema::Object
        # @return [String] Object type
        attribute :type, API::Types::Coercible::String.enum("group", "profile")
        # @return [String] Section title
        attribute :section, API::Types::Coercible::String.enum("groups", "events", "publics", "correspondents", "people", "friends", "mutual_friends")
        # @return [String] Object description
        attribute :description, API::Types::Coercible::String
        # @return [API::Base::BoolInt] Information whether the object has been found globally
        attribute :global, API::Base::BoolInt.optional.default(nil)
        # @return [API::Groups::Group] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :group, Dry::Types[API::Groups::Group].optional.default(nil)
        # @return [API::Users::UserMin] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :profile, Dry::Types[API::Users::UserMin].optional.default(nil)
      end
    end
  end
end
