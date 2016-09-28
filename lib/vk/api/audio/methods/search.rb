# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Audio < Vk::Schema::Namespace
      module Methods
        # Returns a list of audio matching the search criteria.
        class Search < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'audio.search'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :q Search query string (e.g., 'The Beatles').
          #   @option arguments [Boolean] :auto_complete '1' — to correct for mistakes in the search query (e.g., if you enter 'Beetles', the system will search for 'Beatles').
          #   @option arguments [Boolean] :lyrics '1' — to return only audio files that have associated lyrics.
          #   @option arguments [Boolean] :performer_only '1' — to search only by artist name.
          #   @option arguments [Integer] :sort Sort order: ; '1' — by duration;; '2' — by popularity;; '0' — by date added.
          #   @option arguments [Boolean] :search_own '1' — to search among current user's audios. By default: '0'.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of audio files.
          #   @option arguments [Integer] :count Number of audio files to return.
          #   @return [Audio::Methods::Search]

          # @!group Arguments

          # @return [String] Search query string (e.g., 'The Beatles').
          attribute :q, API::Types::Coercible::String.optional
          # @return [Boolean] '1' — to correct for mistakes in the search query (e.g., if you enter 'Beetles', the system will search for 'Beatles').
          attribute :auto_complete, API::Types::Bool.optional
          # @return [Boolean] '1' — to return only audio files that have associated lyrics.
          attribute :lyrics, API::Types::Bool.optional
          # @return [Boolean] '1' — to search only by artist name.
          attribute :performer_only, API::Types::Bool.optional
          # @return [Integer] Sort order: ; '1' — by duration;; '2' — by popularity;; '0' — by date added.
          attribute :sort, API::Types::Coercible::Int.optional
          # @return [Boolean] '1' — to search among current user's audios. By default: '0'.
          attribute :search_own, API::Types::Bool.optional
          # @return [Integer] Offset needed to return a specific subset of audio files.
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] Number of audio files to return.
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
