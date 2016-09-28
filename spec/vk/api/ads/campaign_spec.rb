# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/campaign'

RSpec.describe Vk::API::Ads::Campaign do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :type }
    it { is_expected.to include :name }
    it { is_expected.to include :status }
    it { is_expected.to include :day_limit }
    it { is_expected.to include :all_limit }
    it { is_expected.to include :start_time }
    it { is_expected.to include :stop_time }
  end
end
