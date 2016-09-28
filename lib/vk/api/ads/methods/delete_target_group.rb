# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Deletes a retarget group.
        class DeleteTargetGroup < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.deleteTargetGroup'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
          #   @option arguments [Integer] :target_group_id Group ID.
          #   @return [Ads::Methods::DeleteTargetGroup]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
          # @return [Integer] 'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
          attribute :client_id, API::Types::Coercible::Int.optional
          # @return [Integer] Group ID.
          attribute :target_group_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
