# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      module Methods
        # Creates polls that can be attached to the users' or communities' posts.
        class Create < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'polls.create'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :question question text
          #   @option arguments [Boolean] :is_anonymous '1' – anonymous poll, participants list is hidden;; '0' – public poll, participants list is available;; Default value is '0'.
          #   @option arguments [Integer] :owner_id If a poll will be added to a communty it is required to send a negative group identifier. Current user by default.
          #   @option arguments [String] :add_answers available answers list, for example:; " ["yes","no","maybe"]"; There can be from 1 to 10 answers.
          #   @return [Polls::Methods::Create]

          # @!group Arguments

          # @return [String] question text
          attribute :question, API::Types::Coercible::String.optional
          # @return [Boolean] '1' – anonymous poll, participants list is hidden;; '0' – public poll, participants list is available;; Default value is '0'.
          attribute :is_anonymous, API::Types::Bool.optional
          # @return [Integer] If a poll will be added to a communty it is required to send a negative group identifier. Current user by default.
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [String] available answers list, for example:; " ["yes","no","maybe"]"; There can be from 1 to 10 answers.
          attribute :add_answers, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
