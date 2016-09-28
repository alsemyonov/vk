# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/message_attachment'

RSpec.describe Vk::API::Messages::MessageAttachment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :photo }
    it { is_expected.to include :audio }
    it { is_expected.to include :video }
    it { is_expected.to include :doc }
    it { is_expected.to include :link }
    it { is_expected.to include :market }
    it { is_expected.to include :market_market_album }
    it { is_expected.to include :gift }
    it { is_expected.to include :sticker }
    it { is_expected.to include :wall }
    it { is_expected.to include :wall_reply }
    it { is_expected.to include :type }
  end
end
