# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class SaveListResponse < Vk::Schema::Response
          # @return [Integer] List ID
          attribute :response, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
