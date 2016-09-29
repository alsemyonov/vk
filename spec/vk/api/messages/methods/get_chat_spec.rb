# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/get_chat'

RSpec.describe Vk::API::Messages::Methods::GetChat do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :chat_id }
    it { is_expected.to include :chat_ids }
    it { is_expected.to include :fields }
    it { is_expected.to include :name_case }
  end
end
