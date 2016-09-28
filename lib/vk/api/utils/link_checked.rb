# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Utils < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LinkChecked < Vk::Schema::Object
        # @return [String] Link status
        attribute :status, API::Types::Coercible::String.optional
        # @return [String] Link URL
        attribute :link, API::Types::Coercible::String.optional
      end
    end
  end
end
