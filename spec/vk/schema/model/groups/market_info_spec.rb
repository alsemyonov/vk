# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/groups/market_info'

RSpec.describe Vk::Schema::Model::Groups::MarketInfo do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :enabled }
    it { is_expected.to include :price_min }
    it { is_expected.to include :price_max }
    it { is_expected.to include :main_album_id }
    it { is_expected.to include :contact_id }
    it { is_expected.to include :currency }
    it { is_expected.to include :currency_text }
  end
end
