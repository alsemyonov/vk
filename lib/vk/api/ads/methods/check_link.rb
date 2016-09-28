# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Allows to check the ad link.
        class CheckLink < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.checkLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :link_type Object type:; *'community' — community;; *'post' — community post;; *'application' — VK application;; *'video' — video;; *'site' — external site.
          #   @option arguments [String] :link_url Object URL.
          #   @option arguments [Integer] :campaign_id Campaign ID
          #   @return [Ads::Methods::CheckLink]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int.optional
          # @return [String] Object type:; *'community' — community;; *'post' — community post;; *'application' — VK application;; *'video' — video;; *'site' — external site.
          attribute :link_type, API::Types::Coercible::String.optional
          # @return [String] Object URL.
          attribute :link_url, API::Types::Coercible::String.optional
          # @return [Integer] Campaign ID
          attribute :campaign_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
