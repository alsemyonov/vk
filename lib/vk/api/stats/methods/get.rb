# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Stats < Vk::Schema::Namespace
      module Methods
        # Returns statistics of a community or an application.
        class Get < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'stats.get'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :app_id Application ID.
          #   @option arguments [String] :date_from Latest datestamp (in Unix time) of statistics to return.
          #   @option arguments [String] :date_to End datestamp (in Unix time) of statistics to return.
          #   @return [Stats::Methods::Get]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Application ID.
          attribute :app_id, API::Types::Coercible::Int.optional
          # @return [String] Latest datestamp (in Unix time) of statistics to return.
          attribute :date_from, API::Types::Coercible::String.optional
          # @return [String] End datestamp (in Unix time) of statistics to return.
          attribute :date_to, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
