# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Places < Vk::Schema::Namespace
      module Methods
        # Returns a list of user check-ins at locations according to the set parameters.
        class GetCheckins < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'places.getCheckins'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Number] :latitude Geographical latitude of the initial search point, in degrees (from '-90' to '90').
          #   @option arguments [Number] :longitude Geographical longitude of the initial search point, in degrees (from '-180' to '180').
          #   @option arguments [Integer] :place Location ID of check-ins to return. (Ignored if 'latitude' and 'longitude' are specified.)
          #   @option arguments [Integer] :user_id @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of check-ins. (Ignored if 'timestamp' is not null.)
          #   @option arguments [Integer] :count Number of check-ins to return. (Ignored if 'timestamp' is not null.)
          #   @option arguments [Integer] :timestamp Specifies that only those check-ins created after the specified timestamp will be returned.
          #   @option arguments [Boolean] :friends_only '1' — to return only check-ins with set geographical coordinates. (Ignored if 'latitude' and 'longitude' are not set.)
          #   @option arguments [Boolean] :need_places '1' — to return location information with the check-ins. (Ignored if 'place' is not set.);
          #   @return [Places::Methods::GetCheckins]

          # @!group Arguments

          # @return [Number] Geographical latitude of the initial search point, in degrees (from '-90' to '90').
          attribute :latitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Number] Geographical longitude of the initial search point, in degrees (from '-180' to '180').
          attribute :longitude, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Location ID of check-ins to return. (Ignored if 'latitude' and 'longitude' are specified.)
          attribute :place, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :user_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of check-ins. (Ignored if 'timestamp' is not null.)
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of check-ins to return. (Ignored if 'timestamp' is not null.)
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Specifies that only those check-ins created after the specified timestamp will be returned.
          attribute :timestamp, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return only check-ins with set geographical coordinates. (Ignored if 'latitude' and 'longitude' are not set.)
          attribute :friends_only, API::Types::Bool.optional.default(nil)
          # @return [Boolean] '1' — to return location information with the check-ins. (Ignored if 'place' is not set.);
          attribute :need_places, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
