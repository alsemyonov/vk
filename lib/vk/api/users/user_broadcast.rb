# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class UserBroadcast < API::Users::UserMin
        # @return [API::Audio::AudioFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        attribute :status_audio, Dry::Types[API::Audio::AudioFull].optional
      end
    end
  end
end
