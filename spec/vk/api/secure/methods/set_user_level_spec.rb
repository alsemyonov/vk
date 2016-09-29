# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/methods/set_user_level'

RSpec.describe Vk::API::Secure::Methods::SetUserLevel do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :levels }
    it { is_expected.to include :user_id }
    it { is_expected.to include :level }
  end
end
