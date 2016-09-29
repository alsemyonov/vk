# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/orders/methods/get'

RSpec.describe Vk::API::Orders::Methods::Get do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
    it { is_expected.to include :test_mode }
  end
end
