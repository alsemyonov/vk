# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Allows to add, remove or edit the community manager .
        class EditManager < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.editManager'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Community ID.
          #   @option arguments [Integer] :user_id User ID.
          #   @option arguments [String] :role Manager role. Possible values:; *'moderator';; *'editor';; *'administrator'.
          #   @option arguments [Boolean] :is_contact '1' — to show the manager in Contacts block of the community.
          #   @option arguments [String] :contact_position Position to show in Contacts block.
          #   @option arguments [String] :contact_phone Contact phone.
          #   @option arguments [String] :contact_email Contact e-mail.
          #   @return [Groups::Methods::EditManager]

          # @!group Arguments

          # @return [Integer] Community ID.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] User ID.
          attribute :user_id, API::Types::Coercible::Int.optional
          # @return [String] Manager role. Possible values:; *'moderator';; *'editor';; *'administrator'.
          attribute :role, API::Types::Coercible::String.optional
          # @return [Boolean] '1' — to show the manager in Contacts block of the community.
          attribute :is_contact, API::Types::Bool.optional
          # @return [String] Position to show in Contacts block.
          attribute :contact_position, API::Types::Coercible::String.optional
          # @return [String] Contact phone.
          attribute :contact_phone, API::Types::Coercible::String.optional
          # @return [String] Contact e-mail.
          attribute :contact_email, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
