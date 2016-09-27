# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/stats_format'

RSpec.describe Vk::Schema::Model::Ads::StatsFormat do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :day }
    it { is_expected.to include :month }
    it { is_expected.to include :overall }
    it { is_expected.to include :spent }
    it { is_expected.to include :impressions }
    it { is_expected.to include :clicks }
    it { is_expected.to include :reach }
    it { is_expected.to include :video_views }
    it { is_expected.to include :video_views_half }
    it { is_expected.to include :video_views_full }
    it { is_expected.to include :video_clicks_site }
    it { is_expected.to include :join_rate }
  end
end
