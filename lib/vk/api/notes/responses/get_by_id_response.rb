# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Notes < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class GetByIdResponse < Vk::Schema::Response
          # @return [API::Notes::Note] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Notes::Note].optional
        end
      end
    end
  end
end
