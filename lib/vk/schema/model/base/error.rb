# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Base
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Error < Vk::Schema::Model
          # @return [Integer] Error code
          attribute :error_code, Schema::Types::Coercible::Int.optional
          # @return [String] Error message
          attribute :error_msg, Schema::Types::Coercible::String.optional
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :request_params, Schema::Types::Coercible::Array.member(Model::Base::RequestParam).optional
        end
      end
    end
  end
end
