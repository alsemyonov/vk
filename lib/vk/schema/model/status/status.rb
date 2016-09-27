# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Status
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Status < Vk::Schema::Model
          # @return [String] Status text
          attribute :text, Schema::Types::Coercible::String.optional
          # @return [AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :audio, Dry::Types[Model::Audio::AudioFull].optional
        end
      end
    end
  end
end
