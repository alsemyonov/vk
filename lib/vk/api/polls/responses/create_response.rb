# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CreateResponse < Vk::Schema::Response
          # @return [API::Polls::Poll] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Polls::Poll].optional
        end
      end
    end
  end
end
