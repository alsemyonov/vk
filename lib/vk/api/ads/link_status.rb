# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class LinkStatus < Vk::Schema::Object
        # @return [String] Link status
        attribute :status, API::Types::Coercible::String
        # @return [String] Reject reason
        attribute :description, API::Types::Coercible::String
        # @return [String] URL
        attribute :redirect_url, API::Types::Coercible::String
      end
    end
  end
end
