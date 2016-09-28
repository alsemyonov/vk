# frozen_string_literal: true
require 'vk/schema'
require 'dry-types'
require 'vk/schema/namespace'

module Vk
  module API
    module Types
      include Dry::Types.module
    end
    class Account < Vk::Schema::Namespace
      autoload :OnoffOptions, 'vk/api/account/onoff_options'
    end
    class Ads < Vk::Schema::Namespace
      autoload :AccessRole, 'vk/api/ads/access_role'
      autoload :ObjectType, 'vk/api/ads/object_type'
    end
    class Base < Vk::Schema::Namespace
      autoload :BoolInt, 'vk/api/base/bool_int'
      autoload :OkResponse, 'vk/api/base/ok_response'
      autoload :PropertyExists, 'vk/api/base/property_exists'
    end
    class Board < Vk::Schema::Namespace
      autoload :DefaultOrder, 'vk/api/board/default_order'
    end
    class Groups < Vk::Schema::Namespace
      autoload :RoleOptions, 'vk/api/groups/role_options'
    end
    class Pages < Vk::Schema::Namespace
      autoload :PrivacySettings, 'vk/api/pages/privacy_settings'
    end
    class Wall < Vk::Schema::Namespace
      autoload :PostType, 'vk/api/wall/post_type'
    end
  end
end
