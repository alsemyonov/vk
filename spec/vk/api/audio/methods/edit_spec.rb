# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/methods/edit'

RSpec.describe Vk::API::Audio::Methods::Edit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :audio_id }
    it { is_expected.to include :artist }
    it { is_expected.to include :title }
    it { is_expected.to include :text }
    it { is_expected.to include :genre_id }
    it { is_expected.to include :no_search }
  end
end
