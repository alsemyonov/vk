# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/demostats_format'

RSpec.describe Vk::Schema::Model::Ads::DemostatsFormat do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :day }
    it { is_expected.to include :month }
    it { is_expected.to include :overall }
    it { is_expected.to include :sex }
    it { is_expected.to include :age }
    it { is_expected.to include :sex_age }
    it { is_expected.to include :cities }
  end
end
