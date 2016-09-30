# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns URL to upload an ad photo to.
        class GetUploadUrl < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getUploadURL'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :ad_format Ad format:; *1 — image and text;; *2 — big image;; *3 — exclusive format;; *4 — community, square image;; *7 — special app format.
          #   @return [Ads::Methods::GetUploadUrl]

          # @!group Arguments

          # @return [Integer] Ad format:; *1 — image and text;; *2 — big image;; *3 — exclusive format;; *4 — community, square image;; *7 — special app format.
          attribute :ad_format, API::Types::Coercible::Int
        end
      end
    end
  end
end
