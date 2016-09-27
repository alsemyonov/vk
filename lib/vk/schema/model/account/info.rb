# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Info < Vk::Schema::Model
          # @return [String] Country code
          attribute :country, Schema::Types::Coercible::String.optional
          # @return [BaseBoolInt] Information whether HTTPS-only is enabled
          attribute :https_required, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether only owners posts should be shown
          attribute :own_posts_default, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether wall comments should be hidden
          attribute :no_wall_replies, Schema::Types::BaseBoolInt.optional
          # @return [BaseBoolInt] Information whether user has been processed intro
          attribute :intro, Schema::Types::BaseBoolInt.optional
          # @return [Integer] Language ID
          attribute :lang, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
