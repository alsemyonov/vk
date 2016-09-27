# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/reject_reason'

RSpec.describe Vk::Schema::Model::Ads::RejectReason do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :comment }
    it { is_expected.to include :rules }
  end
end
