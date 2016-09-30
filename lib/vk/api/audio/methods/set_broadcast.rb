# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Activates an audio broadcast to the status of a user or community.
        class SetBroadcast < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.setBroadcast'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :audio ID of the audio file to be shown in status (e.g., '1_190442705'). If the parameter is not set, the audio status of given communities and user will be deleted.
          #   @option arguments [Array] :target_ids IDs of communities and user whose statuses will be included in the broadcast. Use a negative value to designate a community ID. By default, current user ID.
          #   @return [Audio::Methods::SetBroadcast]

          # @!group Arguments

          # @return [String] ID of the audio file to be shown in status (e.g., '1_190442705'). If the parameter is not set, the audio status of given communities and user will be deleted.
          attribute :audio, API::Types::Coercible::String.optional.default(nil)
          # @return [Array] IDs of communities and user whose statuses will be included in the broadcast. Use a negative value to designate a community ID. By default, current user ID.
          attribute :target_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).constrained(max_size: 20).optional.default(nil)
        end
      end
    end
  end
end
