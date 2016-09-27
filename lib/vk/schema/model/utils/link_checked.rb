# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Utils
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class LinkChecked < Vk::Schema::Model
          # @return [String] Link status
          attribute :status, Schema::Types::Coercible::String.optional
          # @return [String] Link URL
          attribute :link, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
