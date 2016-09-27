# frozen_string_literal: true
require 'vk/schema/model'

module Vk
  class Schema
    class Model < Dry::Struct
      module Docs
        # @see https://github.com/VKCOM/vk-api-schema/blob/master/objects.json
        class DocUploadResponse < Vk::Schema::Model
          # @return [String] Uploaded file data
          attribute :file, Schema::Types::Coercible::String.optional
        end
      end
    end
  end
end
