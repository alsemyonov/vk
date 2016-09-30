# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # With this method you can leave a group, public page, or event.; ;
        class Leave < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.leave'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id ID or screen name of the community.
          #   @return [Groups::Methods::Leave]

          # @!group Arguments

          # @return [Integer] ID or screen name of the community.
          attribute :group_id, API::Types::Coercible::Int
        end
      end
    end
  end
end
