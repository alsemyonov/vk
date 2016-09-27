# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/secure/level'

RSpec.describe Vk::Schema::Model::Secure::Level do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :uid }
    it { is_expected.to include :level }
  end
end
