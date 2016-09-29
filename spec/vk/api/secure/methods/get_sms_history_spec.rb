# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/methods/get_sms_history'

RSpec.describe Vk::API::Secure::Methods::GetSmsHistory do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :date_from }
    it { is_expected.to include :date_to }
    it { is_expected.to include :limit }
  end
end
