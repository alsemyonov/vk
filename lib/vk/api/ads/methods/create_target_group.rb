# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Creates a group to re-target ads for users who visited advertiser's site (viewed information about the product, registered, etc.).
        class CreateTargetGroup < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.createTargetGroup'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'Only for advertising agencies.'; ID of the client with the advertising account where the group will be created.;
          #   @option arguments [String] :name Name of the target group — a string up to 64 characters long.
          #   @option arguments [String] :domain Domain of the site where user accounting code will be placed.
          #   @option arguments [Integer] :lifetime 'For groups with auditory created with pixel code only.'; ; Number of days after that users will be automatically removed from the group. '0' — not to remove users.;
          #   @return [Ads::Methods::CreateTargetGroup]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [Integer] 'Only for advertising agencies.'; ID of the client with the advertising account where the group will be created.;
          attribute :client_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Name of the target group — a string up to 64 characters long.
          attribute :name, API::Types::Coercible::String
          # @return [String] Domain of the site where user accounting code will be placed.
          attribute :domain, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] 'For groups with auditory created with pixel code only.'; ; Number of days after that users will be automatically removed from the group. '0' — not to remove users.;
          attribute :lifetime, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
