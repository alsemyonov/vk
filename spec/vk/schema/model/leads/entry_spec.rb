# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/leads/entry'

RSpec.describe Vk::Schema::Model::Leads::Entry do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :uid }
    it { is_expected.to include :aid }
    it { is_expected.to include :sid }
    it { is_expected.to include :date }
    it { is_expected.to include :status }
    it { is_expected.to include :test_mode }
    it { is_expected.to include :start_date }
    it { is_expected.to include :comment }
  end
end
