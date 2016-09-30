# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns a list of the user's friends and communities that are broadcasting music in their statuses.
        class GetBroadcastList < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.getBroadcastList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :filter Types of objects to return:; 'friends' — only friends; 'groups' — only communities; 'all' — both friends and communities (default)
          #   @option arguments [Boolean] :active '1' — to return only friends and communities that are broadcasting at the moment.; '0' — to return all friends and communities (default).
          #   @return [Audio::Methods::GetBroadcastList]

          # @!group Arguments

          # @return [String] Types of objects to return:; 'friends' — only friends; 'groups' — only communities; 'all' — both friends and communities (default)
          attribute :filter, API::Types::Coercible::String.optional.default(nil)
          # @return [Boolean] '1' — to return only friends and communities that are broadcasting at the moment.; '0' — to return all friends and communities (default).
          attribute :active, API::Types::Bool.optional.default(nil)
        end
      end
    end
  end
end
