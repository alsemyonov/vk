# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Docs
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DocTypes < Vk::Schema::Model
          # @return [Integer] Doc type ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Doc type title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [Integer] Number of docs
          attribute :count, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
