# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class ParseWikiResponse < Vk::Schema::Response
          # @return [String] HTML source
          attribute :response, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
