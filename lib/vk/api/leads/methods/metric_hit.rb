# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Methods
        # Counts the metric event.
        class MetricHit < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'leads.metricHit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :data Metric data obtained in the lead interface.
          #   @return [Leads::Methods::MetricHit]

          # @!group Arguments

          # @return [String] Metric data obtained in the lead interface.
          attribute :data, API::Types::Coercible::String
        end
      end
    end
  end
end
