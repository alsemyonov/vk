# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DeleteVoteResponse < Vk::Schema::Response
          # @return [API::Base::BoolInt] Result
          attribute :response, API::Base::BoolInt.optional
        end
      end
    end
  end
end
