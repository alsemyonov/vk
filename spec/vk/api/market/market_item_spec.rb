# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/market/market_item'

RSpec.describe Vk::API::Market::MarketItem do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :price }
    it { is_expected.to include :category }
    it { is_expected.to include :date }
    it { is_expected.to include :thumb_photo }
    it { is_expected.to include :availability }
  end
end
