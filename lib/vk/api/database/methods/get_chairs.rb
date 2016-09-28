# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns list of chairs on a specified faculty.
        class GetChairs < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getChairs'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :faculty_id id of the faculty to get chairs from
          #   @option arguments [Integer] :offset offset required to get a certain subset of chairs
          #   @option arguments [Integer] :count amount of chairs to get
          #   @return [Database::Methods::GetChairs]

          # @!group Arguments

          # @return [Integer] id of the faculty to get chairs from
          attribute :faculty_id, API::Types::Coercible::Int.optional
          # @return [Integer] offset required to get a certain subset of chairs
          attribute :offset, API::Types::Coercible::Int.optional
          # @return [Integer] amount of chairs to get
          attribute :count, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
