# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/target_group'

RSpec.describe Vk::API::Ads::TargetGroup do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :name }
    it { is_expected.to include :domain }
    it { is_expected.to include :audience_count }
    it { is_expected.to include :lifetime }
    it { is_expected.to include :pixel }
  end
end
