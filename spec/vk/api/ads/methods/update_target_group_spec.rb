# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/update_target_group'

RSpec.describe Vk::API::Ads::Methods::UpdateTargetGroup do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :client_id }
    it { is_expected.to include :target_group_id }
    it { is_expected.to include :name }
    it { is_expected.to include :domain }
    it { is_expected.to include :lifetime }
  end
end
