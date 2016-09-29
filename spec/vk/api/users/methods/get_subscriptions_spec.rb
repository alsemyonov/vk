# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/methods/get_subscriptions'

RSpec.describe Vk::API::Users::Methods::GetSubscriptions do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :extended }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :fields }
  end
end
