# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/stats/period'

RSpec.describe Vk::API::Stats::Period do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :day }
    it { is_expected.to include :views }
    it { is_expected.to include :visitors }
    it { is_expected.to include :reach }
    it { is_expected.to include :reach_subscribers }
    it { is_expected.to include :subscribed }
    it { is_expected.to include :unsubscribed }
    it { is_expected.to include :sex }
    it { is_expected.to include :age }
    it { is_expected.to include :sex_age }
    it { is_expected.to include :cities }
    it { is_expected.to include :countries }
  end
end
