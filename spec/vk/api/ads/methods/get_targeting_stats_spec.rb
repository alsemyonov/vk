# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/get_targeting_stats'

RSpec.describe Vk::API::Ads::Methods::GetTargetingStats do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :criteria }
    it { is_expected.to include :ad_id }
    it { is_expected.to include :ad_format }
    it { is_expected.to include :ad_platform }
    it { is_expected.to include :link_url }
    it { is_expected.to include :link_domain }
  end
end
