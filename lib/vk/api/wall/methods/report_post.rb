# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Wall < Vk::Schema::Namespace
      module Methods
        # Reports (submits a complaint about) a post on a user wall or community wall.;
        class ReportPost < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'wall.reportPost'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the wall.
          #   @option arguments [Integer] :post_id Post ID.
          #   @option arguments [Integer] :reason Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
          #   @return [Wall::Methods::ReportPost]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the wall.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Post ID.
          attribute :post_id, API::Types::Coercible::Int
          # @return [Integer] Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
          attribute :reason, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
