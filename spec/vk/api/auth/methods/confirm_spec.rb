# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/auth/methods/confirm'

RSpec.describe Vk::API::Auth::Methods::Confirm do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :client_id }
    it { is_expected.to include :client_secret }
    it { is_expected.to include :phone }
    it { is_expected.to include :code }
    it { is_expected.to include :password }
    it { is_expected.to include :test_mode }
    it { is_expected.to include :intro }
  end
end
