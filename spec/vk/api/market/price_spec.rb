# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/market/price'

RSpec.describe Vk::API::Market::Price do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :amount }
    it { is_expected.to include :currency }
    it { is_expected.to include :text }
  end
end
