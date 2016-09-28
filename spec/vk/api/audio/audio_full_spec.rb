# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/audio_full'

RSpec.describe Vk::API::Audio::AudioFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :duration }
    it { is_expected.to include :date }
    it { is_expected.to include :album_id }
    it { is_expected.to include :lyrics_id }
    it { is_expected.to include :genre_id }
    it { is_expected.to include :no_search }
  end
end
