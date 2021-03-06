# frozen_string_literal: true
require 'vk/api/responses'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Responses
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class IsAppUserResponse < Vk::Schema::Response
          # @return [API::Base::BoolInt] Information whether the user have installed an app
          attribute :response, API::Base::BoolInt.optional.default(nil)
        end
      end
    end
  end
end
