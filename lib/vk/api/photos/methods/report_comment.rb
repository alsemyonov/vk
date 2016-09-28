# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Reports (submits a complaint about) a comment on a photo.;
        class ReportComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.reportComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the photo.
          #   @option arguments [Integer] :comment_id ID of the comment being reported.
          #   @option arguments [Integer] :reason Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
          #   @return [Photos::Methods::ReportComment]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the photo.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] ID of the comment being reported.
          attribute :comment_id, API::Types::Coercible::Int.optional
          # @return [Integer] Reason for the complaint:; '0' – spam; '1' – child pornography; '2' – extremism; '3' – violence; '4' – drug propaganda; '5' – adult material; '6' – insult; abuse
          attribute :reason, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
