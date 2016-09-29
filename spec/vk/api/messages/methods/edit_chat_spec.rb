# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/edit_chat'

RSpec.describe Vk::API::Messages::Methods::EditChat do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :chat_id }
    it { is_expected.to include :title }
  end
end
