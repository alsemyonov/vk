# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class Offer < Vk::Schema::Object
        # @return [Integer] Offer ID
        attribute :id, API::Types::Coercible::Int.optional
        # @return [String] Offer title
        attribute :title, API::Types::Coercible::String.optional
        # @return [String] Instruction how to process the offer
        attribute :instruction, API::Types::Coercible::String.optional
        # @return [String] Instruction how to process the offer (HTML format)
        attribute :instruction_html, API::Types::Coercible::String.optional
        # @return [String] Offer short description
        attribute :short_description, API::Types::Coercible::String.optional
        # @return [String] Offer description
        attribute :description, API::Types::Coercible::String.optional
        # @return [String] URL of the preview image
        attribute :img, API::Types::Coercible::String.optional
        # @return [String] Offer tag
        attribute :tag, API::Types::Coercible::String.optional
        # @return [Integer] Offer price
        attribute :price, API::Types::Coercible::Int.optional
      end
    end
  end
end
