# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/audio_upload_response'

RSpec.describe Vk::API::Audio::AudioUploadResponse do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :redirect }
    it { is_expected.to include :server }
    it { is_expected.to include :audio }
    it { is_expected.to include :hash }
  end
end
