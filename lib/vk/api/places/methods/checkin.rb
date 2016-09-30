# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      module Methods
        # Checks a user in at the specified location.
        class Checkin < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'places.checkin'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :place_id Location ID.
          #   @option arguments [String] :text Text of the comment on the check-in (255 characters maximum; line breaks not supported).
          #   @option arguments [Number] :latitude Geographical latitude of the check-in, in degrees (from '-90' to '90').
          #   @option arguments [Number] :longitude Geographical longitude of the check-in, in degrees (from '-180' to '180').
          #   @option arguments [Boolean] :friends_only '1' — Check-in will be available only for friends.; '0' — Check-in will be available for all users (default).
          #   @option arguments [Array] :services List of services or websites (e.g., 'twitter', 'facebook') to which the check-in will be exported, if the user has set up the respective option.
          #   @return [Places::Methods::Checkin]

          # @!group Arguments

          # @return [Integer] Location ID.
          attribute :place_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Text of the comment on the check-in (255 characters maximum; line breaks not supported).
          attribute :text, API::Types::Coercible::String.optional.default(nil)
          # @return [Number] Geographical latitude of the check-in, in degrees (from '-90' to '90').
          attribute :latitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical longitude of the check-in, in degrees (from '-180' to '180').
          attribute :longitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — Check-in will be available only for friends.; '0' — Check-in will be available for all users (default).
          attribute :friends_only, API::Types::Form::Bool.optional.default(nil)
          # @return [Array] List of services or websites (e.g., 'twitter', 'facebook') to which the check-in will be exported, if the user has set up the respective option.
          attribute :services, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
