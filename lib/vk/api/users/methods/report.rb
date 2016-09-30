# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Users < Vk::Schema::Namespace
      module Methods
        # Reports (submits a complain about) a user.;
        class Report < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'users.report'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [Integer] :user_id ID of the user about whom a complaint is being made.
          #   @option arguments [String] :type Type of complaint:; 'porn' – pornography; 'spam' – spamming; 'insult' – abusive behavior; 'advertisment' – disruptive advertisements
          #   @option arguments [String] :comment Comment describing the complaint.
          #   @return [Users::Methods::Report]

          # @!group Arguments

          # @return [Integer] ID of the user about whom a complaint is being made.
          attribute :user_id, API::Types::Coercible::Int
          # @return [String] Type of complaint:; 'porn' – pornography; 'spam' – spamming; 'insult' – abusive behavior; 'advertisment' – disruptive advertisements
          attribute :type, API::Types::Coercible::String
          # @return [String] Comment describing the complaint.
          attribute :comment, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
