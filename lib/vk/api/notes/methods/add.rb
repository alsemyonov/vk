# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Methods
        # Creates a new note for the current user.
        class Add < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'notes.add'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :title Note title.
          #   @option arguments [String] :text Note text.
          #   @option arguments [Array] :privacy_view @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @option arguments [Array] :privacy_comment @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          #   @return [Notes::Methods::Add]

          # @!group Arguments

          # @return [String] Note title.
          attribute :title, API::Types::Coercible::String
          # @return [String] Note text.
          attribute :text, API::Types::Coercible::String
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_view, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default([])
          # @return [Array] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :privacy_comment, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default([])
        end
      end
    end
  end
end
