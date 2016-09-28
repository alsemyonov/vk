# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/chat_push_settings'

RSpec.describe Vk::API::Messages::ChatPushSettings do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :sound }
    it { is_expected.to include :disabled_until }
  end
end
