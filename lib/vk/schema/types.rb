# frozen_string_literal: true
require 'vk/schema'
require 'dry-types'

module Vk
  class Schema
    module Types
      include Dry::Types.module

      autoload :AccountOnoffOptions, 'vk/schema/types/account_onoff_options'
      autoload :AdsAccessRole, 'vk/schema/types/ads_access_role'
      autoload :AdsObjectType, 'vk/schema/types/ads_object_type'
      autoload :BaseBoolInt, 'vk/schema/types/base_bool_int'
      autoload :BaseOkResponse, 'vk/schema/types/base_ok_response'
      autoload :BasePropertyExists, 'vk/schema/types/base_property_exists'
      autoload :BoardDefaultOrder, 'vk/schema/types/board_default_order'
      autoload :GroupsRoleOptions, 'vk/schema/types/groups_role_options'
      autoload :PagesPrivacySettings, 'vk/schema/types/pages_privacy_settings'
      autoload :WallPostType, 'vk/schema/types/wall_post_type'
    end
  end
end
