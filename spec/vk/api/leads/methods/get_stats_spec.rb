# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/leads/methods/get_stats'

RSpec.describe Vk::API::Leads::Methods::GetStats do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :lead_id }
    it { is_expected.to include :secret }
    it { is_expected.to include :date_start }
    it { is_expected.to include :date_end }
  end
end
