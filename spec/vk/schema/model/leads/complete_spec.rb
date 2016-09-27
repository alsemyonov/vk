# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/leads/complete'

RSpec.describe Vk::Schema::Model::Leads::Complete do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :limit }
    it { is_expected.to include :spent }
    it { is_expected.to include :cost }
    it { is_expected.to include :test_mode }
    it { is_expected.to include :success }
  end
end
