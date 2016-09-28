# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Stats < Vk::Schema::Namespace
      module Methods
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class TrackVisitor < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'stats.trackVisitor'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Stats::Methods::TrackVisitor]

          # @!group Arguments

        end
      end
    end
  end
end
