# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/notifications/notification'

RSpec.describe Vk::API::Notifications::Notification do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :date }
    it { is_expected.to include :parent }
    it { is_expected.to include :feedback }
    it { is_expected.to include :reply }
  end
end
