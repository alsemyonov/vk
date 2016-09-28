# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Storage < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetResponse < Vk::Schema::Response
          # @return [String] Key value
          attribute :response, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
