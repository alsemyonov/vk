# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Oauth
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Error < Vk::Schema::Model
          # @return [String] Error type
          attribute :error, Schema::Types::Coercible::String
          # @return [String] Error description
          attribute :error_description, Schema::Types::Coercible::String
          # @return [String] URI for validation
          attribute :redirect_uri, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
