# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/methods/add_app_event'

RSpec.describe Vk::API::Secure::Methods::AddAppEvent do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :activity_id }
    it { is_expected.to include :value }
  end
end
