# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Edits a retarget group.
        class UpdateTargetGroup < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.updateTargetGroup'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
          #   @option arguments [Integer] :target_group_id Group ID.
          #   @option arguments [String] :name New name of the target group — a string up to 64 characters long.
          #   @option arguments [String] :domain Domain of the site where user accounting code will be placed.
          #   @option arguments [Integer] :lifetime 'Only for the groups that get audience from sites with user accounting code.'; Time in days when users added to a retarget group will be automatically excluded from it. ; '0' – automatic exclusion is off.
          #   @return [Ads::Methods::UpdateTargetGroup]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [Integer] 'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
          attribute :client_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Group ID.
          attribute :target_group_id, API::Types::Coercible::Int
          # @return [String] New name of the target group — a string up to 64 characters long.
          attribute :name, API::Types::Coercible::String
          # @return [String] Domain of the site where user accounting code will be placed.
          attribute :domain, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] 'Only for the groups that get audience from sites with user accounting code.'; Time in days when users added to a retarget group will be automatically excluded from it. ; '0' – automatic exclusion is off.
          attribute :lifetime, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
