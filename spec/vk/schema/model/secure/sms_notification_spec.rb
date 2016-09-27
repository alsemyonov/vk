# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/secure/sms_notification'

RSpec.describe Vk::Schema::Model::Secure::SmsNotification do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :app_id }
    it { is_expected.to include :user_id }
    it { is_expected.to include :date }
    it { is_expected.to include :message }
  end
end
