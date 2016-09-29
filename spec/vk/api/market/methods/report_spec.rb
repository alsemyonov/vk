# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/market/methods/report'

RSpec.describe Vk::API::Market::Methods::Report do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :item_id }
    it { is_expected.to include :reason }
  end
end
