# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Adds a new comment on a note.
        class CreateComment < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.createComment'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :note_id Note ID.
          #   @option arguments [Integer] :owner_id Note owner ID.
          #   @option arguments [Integer] :reply_to ID of the user to whom the reply is addressed (if the comment is a reply to another comment).;
          #   @option arguments [String] :message Comment text.
          #   @option arguments [String] :guid @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Notes::Methods::CreateComment]

          # @!group Arguments

          # @return [Integer] Note ID.
          attribute :note_id, API::Types::Coercible::Int
          # @return [Integer] Note owner ID.
          attribute :owner_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] ID of the user to whom the reply is addressed (if the comment is a reply to another comment).;
          attribute :reply_to, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Comment text.
          attribute :message, API::Types::Coercible::String
          # @return [String] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :guid, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
