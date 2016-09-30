# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Returns information about market items by their ids.
        class GetById < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.getById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :item_ids Comma-separated ids list: \$1user id\$1_\$1item id\$1.; If an item belongs to a community -\$1community id\$1 is used. ; " 'Videos' value example: ; '-4363_136089719,13245770_137352259'"
          #   @option arguments [Boolean] :extended '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'.
          #   @return [Market::Methods::GetById]

          # @!group Arguments

          # @return [Array] Comma-separated ids list: \$1user id\$1_\$1item id\$1.; If an item belongs to a community -\$1community id\$1 is used. ; " 'Videos' value example: ; '-4363_136089719,13245770_137352259'"
          attribute :item_ids, API::Types::Coercible::Array.member(API::Types::Coercible::String).constrained(max_size: 100)
          # @return [Boolean] '1' – to return additional fields: 'likes, can_comment, car_repost, photos'. By default: '0'.
          attribute :extended, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
