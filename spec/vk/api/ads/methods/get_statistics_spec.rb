# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/get_statistics'

RSpec.describe Vk::API::Ads::Methods::GetStatistics do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :account_id }
    it { is_expected.to include :ids_type }
    it { is_expected.to include :ids }
    it { is_expected.to include :period }
    it { is_expected.to include :date_from }
    it { is_expected.to include :date_to }
  end
end
