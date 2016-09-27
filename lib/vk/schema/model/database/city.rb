# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Database
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class City < Model::Base::Object
          # @return [String] Area title
          attribute :area, Schema::Types::Coercible::String.optional
          # @return [String] Region title
          attribute :region, Schema::Types::Coercible::String.optional
          # @return [BaseBoolInt] Information whether the city is included in important cities list
          attribute :important, Schema::Types::BaseBoolInt.optional
        end
      end
    end
  end
end
