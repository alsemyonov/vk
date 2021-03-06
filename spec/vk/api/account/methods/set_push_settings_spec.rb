# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/set_push_settings'

RSpec.describe Vk::API::Account::Methods::SetPushSettings do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :device_id }
    it { is_expected.to include :settings }
    it { is_expected.to include :key }
    it { is_expected.to include :value }
  end
end
