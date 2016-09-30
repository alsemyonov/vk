# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CreateResponse < Vk::Schema::Response
          # @return [API::Groups::Group] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Groups::Group].optional.default(nil)
        end
      end
    end
  end
end
