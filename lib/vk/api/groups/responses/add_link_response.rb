# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Groups < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class AddLinkResponse < Vk::Schema::Response
          # @return [API::Groups::GroupLink] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Groups::GroupLink].optional
        end
      end
    end
  end
end
