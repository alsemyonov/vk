# frozen_string_literal: true
require 'vk/base'

module Vk
  class Audio < Base
    GENRES = {
      1 => 'Rock',
      2 => 'Pop',
      3 => 'Rap & Hip-Hop',
      4 => 'Easy Listening',
      5 => 'House & Dance',
      6 => 'Instrumental',
      7 => 'Metal',
      21 => 'Alternative',
      8 => 'Dubstep',
      1001 => 'Jazz & Blues',
      10 => 'Drum & Bass',
      11 => 'Trance',
      12 => 'Chanson',
      13 => 'Ethnic',
      14 => 'Acoustic & Vocal',
      15 => 'Reggae',
      16 => 'Classical',
      17 => 'Indie Pop',
      19 => 'Speech',
      22 => 'Electropop & Disco',
      18 => 'Other'
    }.freeze

    self.fields = %i(
      id
      owner_id
      album_id
      genre_id
      lyrics_id
      artist
      title
      duration
      url
      date
      no_search
    )

    # @return [Vk::Audio::Album]
    def album
      album_id = read_attribute(:album_id).to_s
      @album ||= owner.audio_albums.detect { |album| album.id.to_s == album_id }
    end

    # @return [Vk::User]
    def owner
      @owner ||= Vk::User.find(owner_id)
    end

    # @return [String]
    def genre
      GENRES[genre_id]
    end

    # @return [String]
    def lyrics
      @lyrics ||= loader.get_lyrics(lyrics_id).text if lyrics_id
    end

    # @param [String] genre
    # @return [Integer]
    def genre=(genre)
      self.genre_id = GENRES.key(genre)
    end
  end
end

require 'vk/audio/album'
require 'vk/audio/lyrics'
