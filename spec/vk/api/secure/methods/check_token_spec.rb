# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/methods/check_token'

RSpec.describe Vk::API::Secure::Methods::CheckToken do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :token }
    it { is_expected.to include :ip }
  end
end
