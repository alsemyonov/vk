# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns information about streets by their IDs.
        class GetStreetsById < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getStreetsById'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Array] :street_ids Street IDs.
          #   @return [Database::Methods::GetStreetsById]

          # @!group Arguments

          # @return [Array] Street IDs.
          attribute :street_ids, API::Types::Coercible::Array
        end
      end
    end
  end
end
