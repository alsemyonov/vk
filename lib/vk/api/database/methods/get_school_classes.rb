# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Database < Vk::Schema::Namespace
      module Methods
        # Returns a list of school classes specified for the country.
        class GetSchoolClasses < Schema::Method
          # @!group Properties

          self.open = true
          self.method = 'database.getSchoolClasses'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :country_id Country ID.
          #   @return [Database::Methods::GetSchoolClasses]

          # @!group Arguments

          # @return [Integer] Country ID.
          attribute :country_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
