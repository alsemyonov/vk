require 'vk/audio'

module Vk
  class Audio < Base
    class Album < Base
      self.fields = %i[id owner_id title]
    end
  end
end
