# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/notifications/notifications_comment'

RSpec.describe Vk::API::Notifications::NotificationsComment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :date }
    it { is_expected.to include :text }
    it { is_expected.to include :photo }
    it { is_expected.to include :video }
    it { is_expected.to include :post }
    it { is_expected.to include :topic }
  end
end
