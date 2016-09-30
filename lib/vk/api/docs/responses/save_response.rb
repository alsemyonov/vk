# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class SaveResponse < Vk::Schema::Response
          # @return [API::Docs::Doc] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Docs::Doc].optional.default(nil)
        end
      end
    end
  end
end
