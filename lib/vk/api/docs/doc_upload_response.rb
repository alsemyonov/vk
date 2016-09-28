# frozen_string_literal: true
require 'vk/api/objects'
require 'vk/schema/namespace'

module Vk
  module API
    class Docs < Vk::Schema::Namespace
      # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
      class DocUploadResponse < Vk::Schema::Object
        # @return [String] Uploaded file data
        attribute :file, API::Types::Coercible::String.optional
      end
    end
  end
end
