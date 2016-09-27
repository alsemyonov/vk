# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Friends
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserXtrLists < Model::Users::UserFull
          # @return [String] IDs of friend lists with user
          attribute :lists, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
