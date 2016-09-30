# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Creates and edits user newsfeed lists
        class SaveList < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.saveList'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :list_id numeric list identifier (if not sent, will be set automatically).
          #   @option arguments [String] :title list name.
          #   @option arguments [Array] :source_ids users and communities identifiers to be added to the list. Community identifiers must be negative numbers.
          #   @option arguments [Boolean] :no_reposts reposts display on and off ('1' is for off).
          #   @return [Newsfeed::Methods::SaveList]

          # @!group Arguments

          # @return [Integer] numeric list identifier (if not sent, will be set automatically).
          attribute :list_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [String] list name.
          attribute :title, API::Types::Coercible::String
          # @return [Array] users and communities identifiers to be added to the list. Community identifiers must be negative numbers.
          attribute :source_ids, API::Types::Coercible::Array.member(API::Types::Coercible::Int).optional.default(nil)
          # @return [Boolean] reposts display on and off ('1' is for off).
          attribute :no_reposts, API::Types::Form::Bool.optional.default(nil)
        end
      end
    end
  end
end
