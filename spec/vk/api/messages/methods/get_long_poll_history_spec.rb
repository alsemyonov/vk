# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/get_long_poll_history'

RSpec.describe Vk::API::Messages::Methods::GetLongPollHistory do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :ts }
    it { is_expected.to include :pts }
    it { is_expected.to include :preview_length }
    it { is_expected.to include :onlines }
    it { is_expected.to include :fields }
    it { is_expected.to include :events_limit }
    it { is_expected.to include :msgs_limit }
    it { is_expected.to include :max_msg_id }
  end
end
