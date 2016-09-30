# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Newsfeed < Vk::Schema::Namespace
      module Methods
        # Returns communities and users that current user is suggested to follow.
        class GetSuggestedSources < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'newsfeed.getSuggestedSources'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :offset offset required to choose a particular subset of communities or users.
          #   @option arguments [Integer] :count amount of communities or users to return.
          #   @option arguments [Boolean] :shuffle shuffle the returned list or not.
          #   @option arguments [Array] :fields list of extra fields to be returned. See  and .
          #   @return [Newsfeed::Methods::GetSuggestedSources]

          # @!group Arguments

          # @return [Integer] offset required to choose a particular subset of communities or users.
          attribute :offset, API::Types::Coercible::Int.optional.default(nil)
          # @return [Integer] amount of communities or users to return.
          attribute :count, API::Types::Coercible::Int.optional.default(20)
          # @return [Boolean] shuffle the returned list or not.
          attribute :shuffle, API::Types::Form::Bool.optional.default(nil)
          # @return [Array] list of extra fields to be returned. See  and .
          attribute :fields, API::Types::Coercible::Array.member(API::Types::Coercible::String).optional.default(nil)
        end
      end
    end
  end
end
