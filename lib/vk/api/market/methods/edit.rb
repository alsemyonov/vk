# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Edits an item.
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [Integer] :item_id Item ID.
          #   @option arguments [String] :name Item name.
          #   @option arguments [String] :description Item description.
          #   @option arguments [Integer] :category_id Item category ID.
          #   @option arguments [Number] :price Item price.
          #   @option arguments [Boolean] :deleted Item status ('1' — deleted, '0' — not deleted).
          #   @option arguments [Integer] :main_photo_id Cover photo ID.
          #   @option arguments [Array] :photo_ids IDs of additional photos.
          #   @return [Market::Methods::Edit]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int
          # @return [Integer] Item ID.
          attribute :item_id, API::Types::Coercible::Int
          # @return [String] Item name.
          attribute :name, API::Types::Coercible::String
          # @return [String] Item description.
          attribute :description, API::Types::Coercible::String
          # @return [Integer] Item category ID.
          attribute :category_id, API::Types::Coercible::Int
          # @return [Number] Item price.
          attribute :price, API::Types::Coercible::Int
          # @return [Boolean] Item status ('1' — deleted, '0' — not deleted).
          attribute :deleted, API::Types::Bool.optional.default(nil)
          # @return [Integer] Cover photo ID.
          attribute :main_photo_id, API::Types::Coercible::Int
          # @return [Array] IDs of additional photos.
          attribute :photo_ids, API::Types::Coercible::Array.optional.default(nil)
        end
      end
    end
  end
end
