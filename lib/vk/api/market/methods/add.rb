# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Market < Vk::Schema::Namespace
      module Methods
        # Ads a new item to the market.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'market.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id ID of an item owner community.
          #   @option arguments [String] :name Item name.
          #   @option arguments [String] :description Item description.
          #   @option arguments [Integer] :category_id Item category ID.
          #   @option arguments [Number] :price Item price.
          #   @option arguments [Boolean] :deleted Item status ('1' — deleted, '0' — not deleted).
          #   @option arguments [Integer] :main_photo_id Cover photo ID.
          #   @option arguments [Array] :photo_ids IDs of additional photos.
          #   @return [Market::Methods::Add]

          # @!group Arguments

          # @return [Integer] ID of an item owner community.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [String] Item name.
          attribute :name, API::Types::Coercible::String.optional
          # @return [String] Item description.
          attribute :description, API::Types::Coercible::String.optional
          # @return [Integer] Item category ID.
          attribute :category_id, API::Types::Coercible::Int.optional
          # @return [Number] Item price.
          attribute :price, API::Types::Coercible::Int.optional
          # @return [Boolean] Item status ('1' — deleted, '0' — not deleted).
          attribute :deleted, API::Types::Bool.optional
          # @return [Integer] Cover photo ID.
          attribute :main_photo_id, API::Types::Coercible::Int.optional
          # @return [Array] IDs of additional photos.
          attribute :photo_ids, API::Types::Coercible::Array.optional
        end
      end
    end
  end
end
