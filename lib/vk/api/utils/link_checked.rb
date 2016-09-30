# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Utils < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LinkChecked < Vk::Schema::Object
        # @return [String] Link status
        attribute :status, API::Types::Coercible::String.enum("not_banned", "banned", "processing").optional.default(nil)
        # @return [String] Link URL
        attribute :link, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
