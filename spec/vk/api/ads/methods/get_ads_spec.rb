# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/get_ads'

RSpec.describe Vk::API::Ads::Methods::GetAds do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :client_id }
    it { is_expected.to include :include_deleted }
    it { is_expected.to include :campaign_ids }
    it { is_expected.to include :ad_ids }
    it { is_expected.to include :limit }
    it { is_expected.to include :offset }
  end
end
