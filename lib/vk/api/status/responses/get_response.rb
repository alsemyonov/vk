# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Status < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetResponse < Vk::Schema::Response
          # @return [API::Status::Status] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Status::Status].optional
        end
      end
    end
  end
end
