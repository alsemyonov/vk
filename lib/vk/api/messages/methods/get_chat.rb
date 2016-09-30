# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Messages < Vk::Schema::Namespace
      module Methods
        # Returns information about a chat.
        class GetChat < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'messages.getChat'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :chat_id Chat ID.
          #   @option arguments [Array] :chat_ids Chat IDs.
          #   @option arguments [Array] :fields Profile fields to return.;
          #   @option arguments [String] :name_case Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @return [Messages::Methods::GetChat]

          # @!group Arguments

          # @return [Integer] Chat ID.
          attribute :chat_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Array] Chat IDs.
          attribute :chat_ids, API::Types::Coercible::Array.optional.default(nil)
          # @return [Array] Profile fields to return.;
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
