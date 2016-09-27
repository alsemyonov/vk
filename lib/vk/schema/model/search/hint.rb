# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Search
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Hint < Vk::Schema::Model
          # @return [String] Object type
          attribute :type, Schema::Types::Coercible::String
          # @return [String] Section title
          attribute :section, Schema::Types::Coercible::String
          # @return [String] Object description
          attribute :description, Schema::Types::Coercible::String
          # @return [BaseBoolInt] Information whether the object has been found globally
          attribute :global, Schema::Types::BaseBoolInt.optional
          # @return [Group] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :group, Dry::Types[Model::Groups::Group].optional
          # @return [UserMin] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :profile, Dry::Types[Model::Users::UserMin].optional
        end
      end
    end
  end
end
