# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/reject_reason'

RSpec.describe Vk::API::Ads::RejectReason do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :comment }
    it { is_expected.to include :rules }
  end
end
