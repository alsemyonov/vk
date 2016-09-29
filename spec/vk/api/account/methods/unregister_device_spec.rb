# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/unregister_device'

RSpec.describe Vk::API::Account::Methods::UnregisterDevice do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :device_id }
  end
end
