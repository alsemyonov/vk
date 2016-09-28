# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns invited users list of a community
        class GetInvitedUsers < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getInvitedUsers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :group_id Group ID to return invited users for.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Integer] :count Number of results to return.
          #   @option arguments [Array] :fields List of additional fields to be returned. ; Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
          #   @option arguments [String] :name_case Case for declension of user name and surname. Possible values:; *'nom' — nominative (default);; *'gen' — genitive;; *'dat' — dative;; *'acc' — accusative; ; *'ins' — instrumental;; *'abl' — prepositional.
          #   @return [Groups::Methods::GetInvitedUsers]

          # @!group Arguments

          # @return [Integer] Group ID to return invited users for.
          attribute :group_id, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of results to return.
          attribute :count, API::Types::Coercible::Int.optional
          # @return [Array] List of additional fields to be returned. ; Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
          attribute :fields, API::Types::Coercible::Array.optional
          # @return [String] Case for declension of user name and surname. Possible values:; *'nom' — nominative (default);; *'gen' — genitive;; *'dat' — dative;; *'acc' — accusative; ; *'ins' — instrumental;; *'abl' — prepositional.
          attribute :name_case, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
