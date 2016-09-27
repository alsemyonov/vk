# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/orders/order'

RSpec.describe Vk::Schema::Model::Orders::Order do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :app_order_id }
    it { is_expected.to include :status }
    it { is_expected.to include :user_id }
    it { is_expected.to include :receiver_id }
    it { is_expected.to include :item }
    it { is_expected.to include :amount }
    it { is_expected.to include :date }
    it { is_expected.to include :transaction_id }
    it { is_expected.to include :cancel_transaction_id }
  end
end
