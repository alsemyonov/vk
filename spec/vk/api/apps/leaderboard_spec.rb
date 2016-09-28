# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/apps/leaderboard'

RSpec.describe Vk::API::Apps::Leaderboard do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :score }
    it { is_expected.to include :level }
    it { is_expected.to include :points }
    it { is_expected.to include :user_id }
  end
end
