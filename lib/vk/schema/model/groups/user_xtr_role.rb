# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Groups
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserXtrRole < Model::Users::UserFull
          # @return [GroupsRoleOptions] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :role, Schema::Types::GroupsRoleOptions.optional
        end
      end
    end
  end
end
