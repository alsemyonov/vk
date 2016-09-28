# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns a list of communities matching the search criteria.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string.
          #   @option arguments [String] :type Community type. Possible values: 'group, page, event.'
          #   @option arguments [Integer] :country_id Country ID.
          #   @option arguments [Integer] :city_id City ID. If this parameter is transmitted, country_id is ignored.
          #   @option arguments [Boolean] :future '1' —  to return only upcoming events. Works with the 'type' = 'event' only.
          #   @option arguments [Boolean] :market '1' — to return communities with enabled market only.
          #   @option arguments [Integer] :sort Sort order. Possible values:; *'0' — default sorting (similar the full version of the site);; *'1' — by growth speed;; *'2'— by the "day attendance/members number" ratio;; *'3' — by the "Likes number/members number" ratio;; *'4' — by the "comments number/members number" ratio;; *'5' — by the "boards entries number/members number" ratio.; ;
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of results.
          #   @option arguments [Integer] :count Number of communities to return.; "Note that you can not receive more than first thousand of results, regardless of 'count' and 'offset' values."
          #   @return [Groups::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string.
          attribute :q, API::Types::Coercible::String.optional
          # @return [String] Community type. Possible values: 'group, page, event.'
          attribute :type, API::Types::Coercible::String.optional
          # @return [Integer] Country ID.
          attribute :country_id, API::Types::Coercible::Int.optional
          # @return [Integer] City ID. If this parameter is transmitted, country_id is ignored.
          attribute :city_id, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' —  to return only upcoming events. Works with the 'type' = 'event' only.
          attribute :future, API::Types::Bool.optional
          # @return [Boolean] '1' — to return communities with enabled market only.
          attribute :market, API::Types::Bool.optional
          # @return [Integer] Sort order. Possible values:; *'0' — default sorting (similar the full version of the site);; *'1' — by growth speed;; *'2'— by the "day attendance/members number" ratio;; *'3' — by the "Likes number/members number" ratio;; *'4' — by the "comments number/members number" ratio;; *'5' — by the "boards entries number/members number" ratio.; ;
          attribute :sort, API::Types::Coercible::Int.optional
          # @return [Integer] Offset needed to return a specific subset of results.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of communities to return.; "Note that you can not receive more than first thousand of results, regardless of 'count' and 'offset' values."
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
