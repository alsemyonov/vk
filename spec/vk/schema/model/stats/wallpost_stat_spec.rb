# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/stats/wallpost_stat'

RSpec.describe Vk::Schema::Model::Stats::WallpostStat do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :reach_subscribers }
    it { is_expected.to include :reach_total }
    it { is_expected.to include :links }
    it { is_expected.to include :to_group }
    it { is_expected.to include :join_group }
    it { is_expected.to include :report }
    it { is_expected.to include :hide }
    it { is_expected.to include :unsubscribe }
  end
end
