# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/account/account_counters'

RSpec.describe Vk::Schema::Model::Account::AccountCounters do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :friends }
    it { is_expected.to include :messages }
    it { is_expected.to include :photos }
    it { is_expected.to include :videos }
    it { is_expected.to include :gifts }
    it { is_expected.to include :events }
    it { is_expected.to include :groups }
    it { is_expected.to include :notifications }
    it { is_expected.to include :app_requests }
  end
end
