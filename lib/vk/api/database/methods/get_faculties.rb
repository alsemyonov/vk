# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns a list of faculties (i.e., university departments).;
        class GetFaculties < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getFaculties'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :university_id University ID.
          #   @option arguments [Integer] :offset Offset needed to return a specific subset of faculties.
          #   @option arguments [Integer] :count Number of faculties to return.
          #   @return [Database::Methods::GetFaculties]

          # @!group Arguments

          # @return [Integer] University ID.
          attribute :university_id, API::Types::Coercible::Int
          # @return [Integer] Offset needed to return a specific subset of faculties.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] Number of faculties to return.
          attribute :count, API::Types::Coercible::Int.optional.default(nil)
        end
      end
    end
  end
end
