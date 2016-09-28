# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Ads < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ImportTargetContactsResponse < Vk::Schema::Response
          # @return [Integer] Imported contacts number
          attribute :response, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
