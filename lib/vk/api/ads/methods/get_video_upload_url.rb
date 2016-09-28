# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns URL to upload an ad video to.
        class GetVideoUploadUrl < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getVideoUploadURL'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Ads::Methods::GetVideoUploadUrl]

          # @!group Arguments

        end
      end
    end
  end
end
