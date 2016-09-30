# frozen_string_literal: true
require 'vk/api/methods'

module Vk
  module API
    class Account < Vk::Schema::Namespace
      module Methods
        # Allows to edit the current account info.
        class SetInfo < Schema::Method
          # @!group Properties

          self.open = false
          self.method = 'account.setInfo'

          # @method initialize(arguments)
          #   @param [Hash] arguments
          #   @option arguments [String] :name Setting name.
          #   @option arguments [String] :value Setting value.
          #   @return [Account::Methods::SetInfo]

          # @!group Arguments

          # @return [String] Setting name.
          attribute :name, API::Types::Coercible::String.optional.default(nil)
          # @return [String] Setting value.
          attribute :value, API::Types::Coercible::String.optional.default(nil)
        end
      end
    end
  end
end
