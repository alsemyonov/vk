# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Vk::Error do
  it { is_expected.to be_a StandardError }
end

RSpec.describe Vk::TooManyArgumentsError do
  subject { described_class.new(method, argument, count) }
  let(:method) { :method }
  let(:argument) { :argument }
  let(:count) { 1000 }

  it { is_expected.to be_a Vk::Error }
  specify do
    expect(subject.message).to eq 'Argument :argument of method :method ' \
      'cannot contain more than 1000 values'
  end
end
