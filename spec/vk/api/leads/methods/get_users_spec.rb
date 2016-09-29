# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/leads/methods/get_users'

RSpec.describe Vk::API::Leads::Methods::GetUsers do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :offer_id }
    it { is_expected.to include :secret }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :status }
    it { is_expected.to include :reverse }
  end
end
