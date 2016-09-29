# frozen_string_literal: true
require 'spec_helper'

class Included
  include Vk::Logging
end

class Extended
  extend Vk::Logging
  include Vk::Logging
end

RSpec.describe Vk::Logging do
end

RSpec.describe Included do
  it { is_expected.to respond_to :logger }
  it { is_expected.to respond_to :logger= }
  it { expect(subject.logger).to be_a Logger }
end

RSpec.describe Extended do
  describe 'class' do
    subject { described_class }

    it { is_expected.to respond_to :logger }
    it { is_expected.to respond_to :logger= }
    it { expect(subject.logger).to be_a Logger }
  end

  it { is_expected.to respond_to :logger }
  it { is_expected.to respond_to :logger= }
  it { expect(subject.logger).to be_a Logger }
  it { expect(subject.logger).to eq Extended.logger }
end
