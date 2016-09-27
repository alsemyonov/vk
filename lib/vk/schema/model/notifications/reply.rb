# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Notifications
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Reply < Vk::Schema::Model
          # @return [Integer] Reply ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Date when the reply has been created in Unixtime
          attribute :date, Schema::Types::Coercible::Int.optional
          # @return [Integer] Reply text
          attribute :text, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
