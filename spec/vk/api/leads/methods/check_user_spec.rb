# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/leads/methods/check_user'

RSpec.describe Vk::API::Leads::Methods::CheckUser do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :lead_id }
    it { is_expected.to include :test_result }
    it { is_expected.to include :age }
    it { is_expected.to include :country }
  end
end
