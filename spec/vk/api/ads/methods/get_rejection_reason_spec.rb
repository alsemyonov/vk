# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/get_rejection_reason'

RSpec.describe Vk::API::Ads::Methods::GetRejectionReason do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :ad_id }
  end
end
