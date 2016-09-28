# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Fave < Vk::Schema::Namespace
      module Methods
        # Adds a link to user faves.
        class AddLink < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'fave.addLink'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :link Link URL.
          #   @option arguments [String] :text Description text.
          #   @return [Fave::Methods::AddLink]

          # @!group Arguments

          # @return [String] Link URL.
          attribute :link, API::Types::Coercible::String.optional
          # @return [String] Description text.
          attribute :text, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
