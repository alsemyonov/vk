# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Photos < Vk::Schema::Namespace
      module Methods
        # Returns an upload server address for a profile or community photo.
        class GetOwnerPhotoUploadServer < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'photos.getOwnerPhotoUploadServer'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id identifier of a community or current user.; ; "Note that community id must be negative.; 'owner_id=1' – user; 'owner_id=-1' – community; "
          #   @return [Photos::Methods::GetOwnerPhotoUploadServer]

          # @!group Arguments

          # @return [Integer] identifier of a community or current user.; ; "Note that community id must be negative.; 'owner_id=1' – user; 'owner_id=-1' – community; "
          attribute :owner_id, API::Types::Coercible::Int.optional
        end
      end
    end
  end
end
