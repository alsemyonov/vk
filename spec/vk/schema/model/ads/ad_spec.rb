# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/ad'

RSpec.describe Vk::Schema::Model::Ads::Ad do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :campaign_id }
    it { is_expected.to include :ad_format }
    it { is_expected.to include :cost_type }
    it { is_expected.to include :cpc }
    it { is_expected.to include :cpm }
    it { is_expected.to include :impressions_limit }
    it { is_expected.to include :impressions_limited }
    it { is_expected.to include :ad_platform }
    it { is_expected.to include :all_limit }
    it { is_expected.to include :category1_id }
    it { is_expected.to include :category2_id }
    it { is_expected.to include :status }
    it { is_expected.to include :name }
    it { is_expected.to include :approved }
    it { is_expected.to include :video }
    it { is_expected.to include :disclaimer_medical }
    it { is_expected.to include :disclaimer_specialist }
    it { is_expected.to include :disclaimer_supplements }
  end
end
