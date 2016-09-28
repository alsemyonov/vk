# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class GroupLink < Vk::Schema::Object
        # @return [Integer] Link ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Link URL
        attribute :url, API::Types::Coercible::String.optional
        # @return [API::Base::BoolInt] Information whether the title can be edited
        attribute :edit_title, API::Base::BoolInt.optional
        # @return [String] Link description
        attribute :desc, API::Types::Coercible::String.optional
        # @return [API::Base::BoolInt] Information whether the image on processing
        attribute :image_processing, API::Base::BoolInt.optional
      end
    end
  end
end
