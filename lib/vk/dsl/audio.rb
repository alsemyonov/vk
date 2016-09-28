# frozen_string_literal: true
require 'vk/error'
require 'vk/audio'

module Vk
  module DSL
    module Audio
      AUDIO_SORT = {
        popularity: 2,
        duration: 1,
        date: 0
      }.freeze

      # @param [Integer] owner_id user’s identifier
      # @param [Hash] options
      # @option options [Fixnum] :offset
      # @option options [Fixnum] :count
      def get_audios(owner_id, options = {})
        raise NotImplementedError, ':need_user is not supported for audio.get method' if options.key?(:need_user)
        Vk::Result.new('audio.get', Vk::Audio, options.merge(owner_id: owner_id))
      end

      # @param [Integer] owner_id user’s identifier
      # @param [Hash] options
      # @option options [Fixnum] :offset
      # @option options [Fixnum] :count
      def get_audio_albums(owner_id, options = {})
        Vk::Result.new('audio.getAlbums', Vk::Audio::Album, options.merge(owner_id: owner_id))
      end

      # @param [Fixnum] lyrics_id
      # @return [Vk::Audio::Lyrics]
      def get_lyrics(lyrics_id)
        Vk::Audio::Lyrics.new(request('audio.getLyrics', lyrics_id: lyrics_id))
      end

      # @param [String] q
      # @param [Hash] options
      # @option options [Fixnum] :offset
      # @option options [Fixnum] :count
      # @option options [Fixnum] :auto_complete
      def search_lyrics(q, options = {})
        options[:auto_complete] = !!options[:auto_complete] ? 1 : 0 if options.key?(:auto_complete)
        options[:lyrics] = !!options[:lyrics] ? 1 : 0 if options.key?(:lyrics)
        options[:performer_only] = !!options[:performer_only] ? 1 : 0 if options.key?(:performer_only)
        options[:sort] = AUDIO_SORT[options[:sort]] if options[:sort].is_a?(Symbol)
        options[:search_own] = !!options[:search_own] ? 1 : 0 if options.key?(:search_own)
        Vk::Result.new('audio.search', Vk::Audio, options.merge(q: q))
      end
    end
  end
end
