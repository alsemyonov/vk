# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Methods
        # Returns categories list for communities catalog
        class GetCatalogInfo < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'groups.getCatalogInfo'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @return [Groups::Methods::GetCatalogInfo]

          # @!group Arguments

        end
      end
    end
  end
end
