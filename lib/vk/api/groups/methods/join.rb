# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # With this method you can join the group or public page, and also confirm your participation in an event.
        class Join < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.join'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID or screen name of the community.
          #   @option arguments [String] :not_sure Optional parameter which is taken into account when 'gid' belongs to the event:; '1' — Perhaps I will attend; '0' — I will be there for sure (default); ;
          #   @return [Groups::Methods::Join]

          # @!group Arguments

          # @return [Integer] ID or screen name of the community.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [String] Optional parameter which is taken into account when 'gid' belongs to the event:; '1' — Perhaps I will attend; '0' — I will be there for sure (default); ;
          attribute :not_sure, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
