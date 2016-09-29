# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/orders/methods/change_state'

RSpec.describe Vk::API::Orders::Methods::ChangeState do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :order_id }
    it { is_expected.to include :action }
    it { is_expected.to include :app_order_id }
    it { is_expected.to include :test_mode }
  end
end
