# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Polls < Vk::Schema::Namespace
      module Methods
        # Edits created polls
        class Edit < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'polls.edit'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :owner_id poll owner id
          #   @option arguments [Integer] :poll_id edited poll's id
          #   @option arguments [String] :question new question text
          #   @option arguments [String] :add_answers answers list, for example: ; "["yes","no","maybe"]"
          #   @option arguments [String] :edit_answers object containing answers that need to be edited;; key – answer id, value – new answer text.; Example:; \$1"382967099":"option1", "382967103":"option2"\$1"
          #   @option arguments [String] :delete_answers list of answer ids to be deleted. For example:; "[382967099, 382967103]"
          #   @return [Polls::Methods::Edit]

          # @!group Arguments

          # @return [Integer] poll owner id
          attribute :owner_id, API::Types::Coercible::Int.optional
          # @return [Integer] edited poll's id
          attribute :poll_id, API::Types::Coercible::Int.optional
          # @return [String] new question text
          attribute :question, API::Types::Coercible::String.optional
          # @return [String] answers list, for example: ; "["yes","no","maybe"]"
          attribute :add_answers, API::Types::Coercible::String.optional
          # @return [String] object containing answers that need to be edited;; key – answer id, value – new answer text.; Example:; \$1"382967099":"option1", "382967103":"option2"\$1"
          attribute :edit_answers, API::Types::Coercible::String.optional
          # @return [String] list of answer ids to be deleted. For example:; "[382967099, 382967103]"
          attribute :delete_answers, API::Types::Coercible::String.optional
        end
      end
    end
  end
end
