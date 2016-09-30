# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class University < Vk::Schema::Object
        # @return [Integer] University ID
        attribute :id, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] Country ID
        attribute :country, API::Types::Coercible::Int.optional.default(nil)
        # @return [Integer] City ID
        attribute :city, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] University name
        attribute :name, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Faculty ID
        attribute :faculty, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Faculty name
        attribute :faculty_name, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Chair ID
        attribute :chair, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Chair name
        attribute :chair_name, API::Types::Coercible::String.optional.default(nil)
        # @return [Integer] Graduation year
        attribute :graduation, API::Types::Coercible::Int.optional.default(nil)
        # @return [String] Education form
        attribute :education_form, API::Types::Coercible::String.optional.default(nil)
        # @return [String] Education status
        attribute :education_status, API::Types::Coercible::String.optional.default(nil)
      end
    end
  end
end
