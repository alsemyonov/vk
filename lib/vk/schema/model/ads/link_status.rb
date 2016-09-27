# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LinkStatus < Vk::Schema::Model
          # @return [String] Link status
          attribute :status, Schema::Types::Coercible::String
          # @return [String] Reject reason
          attribute :description, Schema::Types::Coercible::String
          # @return [String] URL
          attribute :redirect_url, Schema::Types::Coercible::String
        end
      end
    end
  end
end
