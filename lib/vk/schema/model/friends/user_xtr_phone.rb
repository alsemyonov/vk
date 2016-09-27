# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Friends
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserXtrPhone < Model::Users::UserFull
          # @return [String] User phone
          attribute :phone, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
