# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns communities list for a catalog category.
        class GetCatalog < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getCatalog'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :category_id Category id received from .
          #   @option arguments [Integer] :subcategory_id Subcategory id received from .
          #   @return [Groups::Methods::GetCatalog]

          # @!group Arguments

          # @return [Integer] Category id received from .
          attribute :category_id, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Subcategory id received from .
          attribute :subcategory_id, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
