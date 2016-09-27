# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/ad_layout'

RSpec.describe Vk::Schema::Model::Ads::AdLayout do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :campaign_id }
    it { is_expected.to include :ad_format }
    it { is_expected.to include :cost_type }
    it { is_expected.to include :video }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :link_url }
    it { is_expected.to include :link_domain }
    it { is_expected.to include :preview_link }
    it { is_expected.to include :image_src }
    it { is_expected.to include :image_src_2x }
  end
end
