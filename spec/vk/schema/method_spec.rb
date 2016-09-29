# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Vk::Schema::Method do
  describe 'class' do
    subject { described_class }

    it { is_expected.to be < Dry::Struct }
  end
end
