# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/messages/message'

RSpec.describe Vk::Schema::Model::Messages::Message do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :date }
    it { is_expected.to include :out }
    it { is_expected.to include :user_id }
    it { is_expected.to include :random_id }
    it { is_expected.to include :important }
    it { is_expected.to include :deleted }
    it { is_expected.to include :fwd_messages }
    it { is_expected.to include :read_state }
    it { is_expected.to include :title }
    it { is_expected.to include :body }
    it { is_expected.to include :attachments }
    it { is_expected.to include :chat_id }
    it { is_expected.to include :chat_active }
    it { is_expected.to include :users_count }
    it { is_expected.to include :admin_id }
    it { is_expected.to include :photo_50 }
    it { is_expected.to include :photo_100 }
    it { is_expected.to include :photo_200 }
    it { is_expected.to include :geo }
  end
end
