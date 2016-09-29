# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/register_device'

RSpec.describe Vk::API::Account::Methods::RegisterDevice do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :token }
    it { is_expected.to include :device_model }
    it { is_expected.to include :device_year }
    it { is_expected.to include :device_id }
    it { is_expected.to include :system_version }
    it { is_expected.to include :settings }
  end
end
