# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns the size of targeting audience, and also recommended values for CPC and CPM.
        class GetTargetingStats < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getTargetingStats'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :account_id Advertising account ID.
          #   @option arguments [String] :criteria Serialized JSON object that describes targeting parameters. Description of 'criteria' object see below.
          #   @option arguments [Integer] :ad_id ID of an ad which targeting parameters shall be analyzed.
          #   @option arguments [Integer] :ad_format Ad format. Possible values:; *'1' — image and text;; *'2' — big image;; *'3' — exclusive format;; *'4' — community, square image;; *'7' — special app format;; *'8' — special community format;; *'9' — post in community;; *'10' — app board.
          #   @option arguments [String] :ad_platform Platforms to use for ad showing. Possible values:; (for 'ad_format' = '1'); *'0' — VK and partner sites;; *'1' — VK only.; (for 'ad_format' = '9'); *'all' — all platforms;; *'desktop' — desktop version;; *'mobile' — mobile version and apps.
          #   @option arguments [String] :link_url URL for the advertised object.
          #   @option arguments [String] :link_domain Domain of the advertised object.
          #   @return [Ads::Methods::GetTargetingStats]

          # @!group Arguments

          # @return [Integer] Advertising account ID.
          attribute :account_id, API::Types::Coercible::Int
          # @return [String] Serialized JSON object that describes targeting parameters. Description of 'criteria' object see below.
          attribute :criteria, API::Types::Coercible::String.optional.default(nil)
          # @return [Integer] ID of an ad which targeting parameters shall be analyzed.
          attribute :ad_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Ad format. Possible values:; *'1' — image and text;; *'2' — big image;; *'3' — exclusive format;; *'4' — community, square image;; *'7' — special app format;; *'8' — special community format;; *'9' — post in community;; *'10' — app board.
          attribute :ad_format, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] Platforms to use for ad showing. Possible values:; (for 'ad_format' = '1'); *'0' — VK and partner sites;; *'1' — VK only.; (for 'ad_format' = '9'); *'all' — all platforms;; *'desktop' — desktop version;; *'mobile' — mobile version and apps.
          attribute :ad_platform, API::Types::Coercible::String.optional.default(nil)
          # @return [String] URL for the advertised object.
          attribute :link_url, API::Types::Coercible::String
          # @return [String] Domain of the advertised object.
          attribute :link_domain, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
