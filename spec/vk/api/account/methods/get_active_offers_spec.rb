# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/get_active_offers'

RSpec.describe Vk::API::Account::Methods::GetActiveOffers do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
  end
end
