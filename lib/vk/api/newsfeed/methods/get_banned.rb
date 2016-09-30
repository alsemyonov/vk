# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Returns a list of users and communities banned from the current user's newsfeed.
        class GetBanned < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.getBanned'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Boolean] :extended '1' — return extra information about users and communities
          #   @option arguments [Array] :fields Profile fields to return.; ;
          #   @option arguments [String] :name_case Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @return [Newsfeed::Methods::GetBanned]

          # @!group Arguments

          # @return [Boolean] '1' — return extra information about users and communities
          attribute :extended, API::Types::Bool.optional.default(nil)
          # @return [Array] Profile fields to return.; ;
          attribute :fields, API::Types::Coercible::Array.optional.default(nil)
          # @return [String] Case for declension of user name and surname:; 'nom' — nominative (default); 'gen' — genitive ; 'dat' — dative; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
