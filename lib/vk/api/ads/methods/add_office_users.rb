# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Adds managers and/or supervisors to advertising account.
        class AddOfficeUsers < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.addOfficeUsers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :data Serialized JSON array of objects that describe added managers. Description of 'user_specification' objects see below.
          #   @return [Ads::Methods::AddOfficeUsers]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [String] Serialized JSON array of objects that describe added managers. Description of 'user_specification' objects see below.
          attribute :data, API::Types::Coercible::String
        end
      end
    end
  end
end
