# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/targ_stats'

RSpec.describe Vk::API::Ads::TargStats do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :audience_count }
    it { is_expected.to include :recommended_cpc }
    it { is_expected.to include :recommended_cpm }
  end
end
