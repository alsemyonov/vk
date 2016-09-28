# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Methods
        # Returns lead stats data.
        class GetStats < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'leads.getStats'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :lead_id Lead ID.
          #   @option arguments [String] :secret Secret key obtained from the lead testing interface.
          #   @option arguments [String] :date_start Day to start stats from (YYYY_MM_DD, e.g.2011-09-17).
          #   @option arguments [String] :date_end Day to finish stats (YYYY_MM_DD, e.g.2011-09-17).
          #   @return [Leads::Methods::GetStats]

          # @!group Arguments

          # @return [Integer] Lead ID.
          attribute :lead_id, API::Types::Coercible::Int.optional
          # @return [String] Secret key obtained from the lead testing interface.
          attribute :secret, API::Types::Coercible::String.optional
          # @return [String] Day to start stats from (YYYY_MM_DD, e.g.2011-09-17).
          attribute :date_start, API::Types::Coercible::String.optional
          # @return [String] Day to finish stats (YYYY_MM_DD, e.g.2011-09-17).
          attribute :date_end, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
