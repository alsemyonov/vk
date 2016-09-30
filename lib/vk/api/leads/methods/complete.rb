# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Leads < Vk::Schema::Namespace
      module Methods
        # Completes the lead started by user.
        class Complete < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'leads.complete'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :vk_sid Session obtained as GET parameter when session started.
          #   @option arguments [String] :secret Secret key from the lead testing interface.
          #   @option arguments [String] :comment Comment text.
          #   @return [Leads::Methods::Complete]

          # @!group Arguments

          # @return [String] Session obtained as GET parameter when session started.
          attribute :vk_sid, API::Types::Coercible::String
          # @return [String] Secret key from the lead testing interface.
          attribute :secret, API::Types::Coercible::String
          # @return [String] Comment text.
          attribute :comment, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
