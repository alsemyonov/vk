# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Methods
        # Returns a list of possible ad categories.
        class GetCategories < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'ads.getCategories'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :lang Language. The full list of supported languages is .
          #   @return [Ads::Methods::GetCategories]

          # @!group Arguments

          # @return [String] Language. The full list of supported languages is .
          attribute :lang, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
