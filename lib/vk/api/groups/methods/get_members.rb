# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns a list of community members.
        class GetMembers < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'groups.getMembers'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :group_id ID or screen name of the community.
          #   @option arguments [String] :sort Sort order. Available values: 'id_asc', 'id_desc', 'time_asc', 'time_desc'.; 'time_asc' and 'time_desc' are availavle only if the method is called by the group's 'moderator'.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of community members.
          #   @option arguments [Integer] :count Number of community members to return.
          #   @option arguments [Array] :fields List of additional fields to be returned. ; Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
          #   @option arguments [String] :filter *'friends' – only friends in this community will be returned;; *'unsure' – only those who pressed 'I may attend' will be returned (if it's an event).
          #   @return [Groups::Methods::GetMembers]

          # @!group Arguments

          # @return [String] ID or screen name of the community.
          attribute :group_id, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Sort order. Available values: 'id_asc', 'id_desc', 'time_asc', 'time_desc'.; 'time_asc' and 'time_desc' are availavle only if the method is called by the group's 'moderator'.
          attribute :sort, API::Types::Coercible::String.enum("id_asc", "id_desc", "time_asc", "time_desc").optional.default("id_asc")
          # @return [Integer] Offset needed to return a specific subset of community members.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of community members to return.
          attribute :count, API::Types::Coercible::Int.optional.default(1000)
          # @return [Array] List of additional fields to be returned. ; Available values: 'sex, bdate, city, country, photo_50, photo_100, photo_200_orig, photo_200, photo_400_orig, photo_max, photo_max_orig, online, online_mobile, lists, domain, has_mobile, contacts, connections, site, education, universities, schools, can_post, can_see_all_posts, can_see_audio, can_write_private_message, status, last_seen, common_count, relation, relatives, counters'.
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
          # @return [String] *'friends' – only friends in this community will be returned;; *'unsure' – only those who pressed 'I may attend' will be returned (if it's an event).
          attribute :filter, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
