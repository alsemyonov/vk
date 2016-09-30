# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class City < API::Base::Object
        # @return [String] Area title
        attribute :area, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Region title
        attribute :region, API::Types::Coercible::String.optional.default(nil)
        # @return [API::Base::BoolInt] Information whether the city is included in important cities list
        attribute :important, API::Base::BoolInt.optional.default(nil)
      end
    end
  end
end
