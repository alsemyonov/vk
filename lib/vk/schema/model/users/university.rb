# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Users
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class University < Vk::Schema::Model
          # @return [Integer] University ID
          attribute :id, Schema::Types::Coercible::Int.optional
          # @return [Integer] Country ID
          attribute :country, Schema::Types::Coercible::Int.optional
          # @return [Integer] City ID
          attribute :city, Schema::Types::Coercible::Int.optional
          # @return [String] University name
          attribute :name, Schema::Types::Coercible::String.optional
          # @return [Integer] Faculty ID
          attribute :faculty, Schema::Types::Coercible::Int.optional
          # @return [String] Faculty name
          attribute :faculty_name, Schema::Types::Coercible::String.optional
          # @return [Integer] Chair ID
          attribute :chair, Schema::Types::Coercible::Int.optional
          # @return [String] Chair name
          attribute :chair_name, Schema::Types::Coercible::String.optional
          # @return [Integer] Graduation year
          attribute :graduation, Schema::Types::Coercible::Int.optional
          # @return [String] Education form
          attribute :education_form, Schema::Types::Coercible::String.optional
          # @return [String] Education status
          attribute :education_status, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
