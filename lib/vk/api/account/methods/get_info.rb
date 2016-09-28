# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Returns current account info.
        class GetInfo < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.getInfo'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :fields Fields to return. Possible values:; *'country' — user country;; *'https_required' — is "HTTPS only" option enabled;; *'own_posts_default' — is "Show my posts only" option is enabled;; *'no_wall_replies' — are wall replies disabled or not;; *'intro' — is intro passed by user or not;; *'lang' — user language.; ; By default: all.
          #   @return [Account::Methods::GetInfo]

          # @!group Arguments

          # @return [Array] Fields to return. Possible values:; *'country' — user country;; *'https_required' — is "HTTPS only" option enabled;; *'own_posts_default' — is "Show my posts only" option is enabled;; *'no_wall_replies' — are wall replies disabled or not;; *'intro' — is intro passed by user or not;; *'lang' — user language.; ; By default: all.
          attribute :fields, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
