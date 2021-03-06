# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/level'

RSpec.describe Vk::API::Secure::Level do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :uid }
    it { is_expected.to include :level }
  end
end
