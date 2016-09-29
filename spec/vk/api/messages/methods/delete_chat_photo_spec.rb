# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/delete_chat_photo'

RSpec.describe Vk::API::Messages::Methods::DeleteChatPhoto do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :chat_id }
  end
end
