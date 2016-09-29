# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/auth/methods/check_phone'

RSpec.describe Vk::API::Auth::Methods::CheckPhone do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :phone }
    it { is_expected.to include :client_id }
    it { is_expected.to include :client_secret }
    it { is_expected.to include :auth_by_phone }
  end
end
