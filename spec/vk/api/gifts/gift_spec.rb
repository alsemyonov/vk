# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/gifts/gift'

RSpec.describe Vk::API::Gifts::Gift do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :from_id }
    it { is_expected.to include :message }
    it { is_expected.to include :date }
    it { is_expected.to include :gift }
    it { is_expected.to include :privacy }
    it { is_expected.to include :gift_hash }
  end
end
