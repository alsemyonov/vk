# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class UserBroadcast < Model::Users::UserMin
          # @return [AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :status_audio, Dry::Types[Model::Audio::AudioFull].optional
        end
      end
    end
  end
end
