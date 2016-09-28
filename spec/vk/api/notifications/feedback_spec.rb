# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/notifications/feedback'

RSpec.describe Vk::API::Notifications::Feedback do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :to_id }
    it { is_expected.to include :from_id }
    it { is_expected.to include :text }
    it { is_expected.to include :likes }
    it { is_expected.to include :attachments }
    it { is_expected.to include :geo }
  end
end
