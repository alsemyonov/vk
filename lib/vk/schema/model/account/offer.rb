# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Account
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class Offer < Vk::Schema::Model
          # @return [Integer] Offer ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [String] Offer title
          attribute :title, Schema::Types::Coercible::String.optional
          # @return [String] Instruction how to process the offer
          attribute :instruction, Schema::Types::Coercible::String.optional
          # @return [String] Instruction how to process the offer (HTML format)
          attribute :instruction_html, Schema::Types::Coercible::String.optional
          # @return [String] Offer short description
          attribute :short_description, Schema::Types::Coercible::String.optional
          # @return [String] Offer description
          attribute :description, Schema::Types::Coercible::String.optional
          # @return [String] URL of the preview image
          attribute :img, Schema::Types::Coercible::String.optional
          # @return [String] Offer tag
          attribute :tag, Schema::Types::Coercible::String.optional
          # @return [Integer] Offer price
          attribute :price, Schema::Types::Coercible::Int.optional
        end
      end
    end
  end
end
