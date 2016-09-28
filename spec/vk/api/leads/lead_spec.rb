# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/leads/lead'

RSpec.describe Vk::API::Leads::Lead do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :limit }
    it { is_expected.to include :spent }
    it { is_expected.to include :cost }
    it { is_expected.to include :impressions }
    it { is_expected.to include :started }
    it { is_expected.to include :completed }
    it { is_expected.to include :days }
  end
end
