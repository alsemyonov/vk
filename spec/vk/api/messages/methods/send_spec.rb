# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/send'

RSpec.describe Vk::API::Messages::Methods::Send do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :random_id }
    it { is_expected.to include :peer_id }
    it { is_expected.to include :domain }
    it { is_expected.to include :chat_id }
    it { is_expected.to include :user_ids }
    it { is_expected.to include :message }
    it { is_expected.to include :lat }
    it { is_expected.to include :long }
    it { is_expected.to include :attachment }
    it { is_expected.to include :forward_messages }
    it { is_expected.to include :sticker_id }
    it { is_expected.to include :notification }
  end
end
