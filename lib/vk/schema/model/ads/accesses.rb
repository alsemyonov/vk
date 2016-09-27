# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Ads
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Accesses < Vk::Schema::Model
          # @return [String] Client ID
          attribute :client_id, Schema::Types::Coercible::String.optional
          # @return [AdsAccessRole] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :role, Schema::Types::AdsAccessRole.optional
        end
      end
    end
  end
end
