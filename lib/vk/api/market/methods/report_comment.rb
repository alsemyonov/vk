# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Sends a complaint to the item's comment.
        class ReportComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.reportComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :comment_id Comment ID.
          #   @option arguments [Integer] :reason Complaint reason. Possible values:; *'0' — spam;; *'1' — child porn;; *'2' — extremism;; *'3' — violence;; *'4' — drugs propaganda;; *'5' — adult materials;; *'6' — insult.
          #   @return [Market::Methods::ReportComment]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Comment ID.
          attribute :comment_id, API::Types::Coercible::Int.optional
          # @return [Integer] Complaint reason. Possible values:; *'0' — spam;; *'1' — child porn;; *'2' — extremism;; *'3' — violence;; *'4' — drugs propaganda;; *'5' — adult materials;; *'6' — insult.
          attribute :reason, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
