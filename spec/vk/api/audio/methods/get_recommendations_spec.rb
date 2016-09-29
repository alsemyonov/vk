# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/audio/methods/get_recommendations'

RSpec.describe Vk::API::Audio::Methods::GetRecommendations do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :target_audio }
    it { is_expected.to include :user_id }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :shuffle }
  end
end
