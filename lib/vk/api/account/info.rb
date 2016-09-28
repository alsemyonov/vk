# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Info < Vk::Schema::Object
        # @return [String] Country code
        attribute :country, API::Types::Coercible::String.optional
        # @return [API::Base::BoolInt] Information whether HTTPS-only is enabled
        attribute :https_required, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether only owners posts should be shown
        attribute :own_posts_default, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether wall comments should be hidden
        attribute :no_wall_replies, API::Base::BoolInt.optional
        # @return [API::Base::BoolInt] Information whether user has been processed intro
        attribute :intro, API::Base::BoolInt.optional
        # @return [Integer] Language ID
        attribute :lang, API::Types::Coercible::Int.optional
      end
    end
  end
end
