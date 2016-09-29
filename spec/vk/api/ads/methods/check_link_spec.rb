# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/check_link'

RSpec.describe Vk::API::Ads::Methods::CheckLink do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :link_type }
    it { is_expected.to include :link_url }
    it { is_expected.to include :campaign_id }
  end
end
