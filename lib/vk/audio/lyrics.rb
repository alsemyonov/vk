# frozen_string_literal: true
require 'vk/audio'

module Vk
  class Audio < Base
    class Lyrics < Base
      self.key_field = :lyrics_id
      self.fields = %i(lyrics_id text)
    end
  end
end
