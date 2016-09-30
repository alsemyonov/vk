# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Methods
        # Creates new session for the user passing the offer.
        class Start < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'leads.start'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :lead_id Lead ID.
          #   @option arguments [String] :secret Secret key from the lead testing interface.
          #   @return [Leads::Methods::Start]

          # @!group Arguments

          # @return [Integer] Lead ID.
          attribute :lead_id, API::Types::Coercible::Int
          # @return [String] Secret key from the lead testing interface.
          attribute :secret, API::Types::Coercible::String
        end
      end
    end
  end
end
