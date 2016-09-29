# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/leads/methods/metric_hit'

RSpec.describe Vk::API::Leads::Methods::MetricHit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :data }
  end
end
