# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Methods
        # Adds user activity information to an application
        class AddAppEvent < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'secure.addAppEvent'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of a user to save the data
          #   @option arguments [Integer] :activity_id there are 2 default activities: ; * 1 – level. Works similar to ;; * 2 – points, saves points amount; Any other value is for saving completed missions
          #   @option arguments [Integer] :value depends on activity_id:; * 1 – number, current level number;; * 2 – number, current user's points amount; ; Any other value is ignored
          #   @return [Secure::Methods::AddAppEvent]

          # @!group Arguments

          # @return [Integer] ID of a user to save the data
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [Integer] there are 2 default activities: ; * 1 – level. Works similar to ;; * 2 – points, saves points amount; Any other value is for saving completed missions
          attribute :activity_id, API::Types::Coercible::Int.optional
          # @return [Integer] depends on activity_id:; * 1 – number, current level number;; * 2 – number, current user's points amount; ; Any other value is ignored
          attribute :value, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
