# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/stats_age'

RSpec.describe Vk::Schema::Model::Ads::StatsAge do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :impressions_rate }
    it { is_expected.to include :clicks_rate }
    it { is_expected.to include :value }
  end
end
