# frozen_string_literal: true
module Vk
  class Error < StandardError
  end

  class TooMuchArguments < Error
    def initialize(method, argument, count)
      super("Argument #{argument.inspect} of method #{method.inspect} cannot contain more than #{count} values")
    end
  end
end
