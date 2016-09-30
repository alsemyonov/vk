# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Video < Vk::Schema::Namespace
      module Methods
        # Returns a list of videos under the set search criterion.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'video.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string (e.g., 'The Beatles').
          #   @option arguments [Integer] :sort Sort order:; '1' — by duration; '2' — by relevance; '0' — by date added
          #   @option arguments [Integer] :hd If not null, only searches for high-definition videos.
          #   @option arguments [Boolean] :adult '1' — to disable the Safe Search filter; '0' — to enable the Safe Search filter
          #   @option arguments [Array] :filters Filters to apply:; 'youtube' — return YouTube videos only; 'vimeo' — return Vimeo videos only; 'short' — return short videos only; 'long' — return long videos only
          #   @option arguments [Boolean] :search_own 
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of videos.
          #   @option arguments [Integer] :longer @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :shorter @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Integer] :count Number of videos to return.
          #   @return [Video::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string (e.g., 'The Beatles').
          attribute :q, API::Types::Coercible::String
          # @return [Integer] Sort order:; '1' — by duration; '2' — by relevance; '0' — by date added
          attribute :sort, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] If not null, only searches for high-definition videos.
          attribute :hd, API::Types::Coercible::Int.optional.default(nil)
          # @return [Boolean] '1' — to disable the Safe Search filter; '0' — to enable the Safe Search filter
          attribute :adult, API::Types::Bool.optional.default(nil)
          # @return [Array] Filters to apply:; 'youtube' — return YouTube videos only; 'vimeo' — return Vimeo videos only; 'short' — return short videos only; 'long' — return long videos only
          attribute :filters, API::Types::Coercible::Array.optional.default(nil)
          # @return [Boolean] 
          attribute :search_own, API::Types::Bool.optional.default(nil)
          # @return [Integer] Offset needed to return a specific subset of videos.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :longer, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :shorter, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of videos to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
