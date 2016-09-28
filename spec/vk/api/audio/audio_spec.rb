# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/audio'

RSpec.describe Vk::API::Audio::Audio do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :artist }
    it { is_expected.to include :title }
    it { is_expected.to include :url }
    it { is_expected.to include :access_key }
  end
end
