# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/stats_age'

RSpec.describe Vk::API::Ads::StatsAge do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :impressions_rate }
    it { is_expected.to include :clicks_rate }
    it { is_expected.to include :value }
  end
end
