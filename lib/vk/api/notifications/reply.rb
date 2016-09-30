# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Notifications < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Reply < Vk::Schema::Object
        # @return [Integer] Reply ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Date when the reply has been created in Unixtime
        attribute :date, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Reply text
        attribute :text, API::Types::Coercible::Int.optional.default(nil)
      end
    end
  end
end
