# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a list of target groups.
        class GetTargetGroups < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getTargetGroups'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'Only for advertising agencies.'; ID of the client with the advertising account where the group will be created.;
          #   @option arguments [Boolean] :extended '1' — to return pixel code.
          #   @return [Ads::Methods::GetTargetGroups]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [Integer] 'Only for advertising agencies.'; ID of the client with the advertising account where the group will be created.;
          attribute :client_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to return pixel code.
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
