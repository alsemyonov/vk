# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      module Methods
        # Returns a list of IDs of users who selected specific answers in the poll.
        class GetVoters < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'polls.getVoters'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of the user or community that owns the poll.  Use a negative value to designate a community ID.
          #   @option arguments [Integer] :poll_id Poll ID.
          #   @option arguments [Array] :answer_ids Answer IDs.
          #   @option arguments [Boolean] :is_board @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Boolean] :friends_only '1' — to return only current user's friends; '0' — to return all users (default);
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of voters.; '0' — (default)
          #   @option arguments [Integer] :count Number of user IDs to return (if the 'friends_only' parameter is not set, maximum '1000'; otherwise '10').; '100' — (default)
          #   @option arguments [Array, 'sex'] :fields Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate (birthdate)', 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.;
          #   @option arguments [String] :name_case Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          #   @return [Polls::Methods::GetVoters]

          # @!group Arguments

          # @return [Integer] ID of the user or community that owns the poll.  Use a negative value to designate a community ID.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] Poll ID.
          attribute :poll_id, API::Types::Coercible::Int.optional
          # @return [Array] Answer IDs.
          attribute :answer_ids, API::Types::Coercible::Array.optional
          # @return [Boolean] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :is_board, API::Types::Bool.optional
          # @return [Boolean] '1' — to return only current user's friends; '0' — to return all users (default);
          attribute :friends_only, API::Types::Bool.optional
          # @return [Integer] Offset needed to return a specific subset of voters.; '0' — (default)
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of user IDs to return (if the 'friends_only' parameter is not set, maximum '1000'; otherwise '10').; '100' — (default)
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Array, 'sex'] Profile fields to return. Sample values: 'nickname', 'screen_name', 'sex', 'bdate (birthdate)', 'city', 'country', 'timezone', 'photo', 'photo_medium', 'photo_big', 'has_mobile', 'rate', 'contacts', 'education', 'online', 'counters'.;
          attribute :fields, API::Types::Coercible::Array.optional
          # @return [String] Case for declension of user name and surname: ; 'nom' — nominative (default) ; 'gen' — genitive ; 'dat' — dative ; 'acc' — accusative ; 'ins' — instrumental ; 'abl' — prepositional
          attribute :name_case, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
