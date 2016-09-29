# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/methods/save'

RSpec.describe Vk::API::Audio::Methods::Save do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :server }
    it { is_expected.to include :audio }
    it { is_expected.to include :hash }
    it { is_expected.to include :artist }
    it { is_expected.to include :title }
  end
end
