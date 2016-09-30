# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Secure < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class CheckTokenResponse < Vk::Schema::Response
          # @return [API::Secure::TokenChecked] @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
          attribute :response, Dry::Types[API::Secure::TokenChecked].optional.default(nil)
        end
      end
    end
  end
end
