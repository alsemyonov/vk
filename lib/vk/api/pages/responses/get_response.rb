# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Pages < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetResponse < Vk::Schema::Response
          # @return [API::Pages::WikipageFull] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Pages::WikipageFull].optional
        end
      end
    end
  end
end
