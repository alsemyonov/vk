# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/get_dialogs'

RSpec.describe Vk::API::Messages::Methods::GetDialogs do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :start_message_id }
    it { is_expected.to include :preview_length }
    it { is_expected.to include :unread }
  end
end
