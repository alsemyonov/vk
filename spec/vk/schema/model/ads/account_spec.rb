# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/account'

RSpec.describe Vk::Schema::Model::Ads::Account do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :account_type }
    it { is_expected.to include :account_status }
    it { is_expected.to include :access_role }
  end
end
