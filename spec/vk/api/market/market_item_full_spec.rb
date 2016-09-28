# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/market/market_item_full'

RSpec.describe Vk::API::Market::MarketItemFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :photos }
    it { is_expected.to include :can_comment }
    it { is_expected.to include :can_repost }
    it { is_expected.to include :likes }
    it { is_expected.to include :views_count }
  end
end
