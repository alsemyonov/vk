# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Edits the place in community.
        class EditPlace < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.editPlace'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [String] :title Place title.
          #   @option arguments [String] :address Place address.
          #   @option arguments [Integer] :country_id Country ID.
          #   @option arguments [Integer] :city_id City ID.
          #   @option arguments [Number] :latitude Geographical latitude.
          #   @option arguments [Number] :longitude Geographical longitude.
          #   @return [Groups::Methods::EditPlace]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Place title.
          attribute :title, API::Types::Coercible::String.optional
          # @return [String] Place address.
          attribute :address, API::Types::Coercible::String.optional
          # @return [Integer] Country ID.
          attribute :country_id, API::Types::Coercible::Int.optional
          # @return [Integer] City ID.
          attribute :city_id, API::Types::Coercible::Int.optional
          # @return [Number] Geographical latitude.
          attribute :latitude, API::Types::Coercible::Int.optional
          # @return [Number] Geographical longitude.
          attribute :longitude, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
