# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class NameRequest < Vk::Schema::Model
          # @return [Integer] Request ID needed to cancel the request
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Request status
          attribute :status, Schema::Types::Coercible::String.optional
          # @return [String] First name in request
          attribute :first_name, Schema::Types::Coercible::String.optional
          # @return [String] Last name in request
          attribute :last_name, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
