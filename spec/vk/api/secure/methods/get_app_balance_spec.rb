# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/methods/get_app_balance'

RSpec.describe Vk::API::Secure::Methods::GetAppBalance do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

  end
end
