# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Imports a list of advertiser's contacts to count VK registered users against the target group.
        class ImportTargetContacts < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.importTargetContacts'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [Integer] :client_id 'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
          #   @option arguments [Integer] :target_group_id Target group ID.
          #   @option arguments [String] :contacts List of phone numbers, emails or user IDs separated with a comma.
          #   @return [Ads::Methods::ImportTargetContacts]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [Integer] 'Only for advertising agencies.' ; ID of the client with the advertising account where the group will be created.;
          attribute :client_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Target group ID.
          attribute :target_group_id, API::Types::Coercible::Int
          # @return [String] List of phone numbers, emails or user IDs separated with a comma.
          attribute :contacts, API::Types::Coercible::String
        end
      end
    end
  end
end
