# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/set_offline'

RSpec.describe Vk::API::Account::Methods::SetOffline do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

  end
end
