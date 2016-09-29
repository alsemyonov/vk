# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/apps/methods/get_leaderboard'

RSpec.describe Vk::API::Apps::Methods::GetLeaderboard do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :global }
  end
end
