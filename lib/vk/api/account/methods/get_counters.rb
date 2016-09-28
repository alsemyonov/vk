# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Returns non-null values of user counters.
        class GetCounters < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.getCounters'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :filter Counters to be returned (friends, messages, photos, videos, notes, gifts, events, groups, sdk).
          #   @return [Account::Methods::GetCounters]

          # @!group Arguments

          # @return [Array] Counters to be returned (friends, messages, photos, videos, notes, gifts, events, groups, sdk).
          attribute :filter, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
