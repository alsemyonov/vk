# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/get'

RSpec.describe Vk::API::Messages::Methods::Get do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :out }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :time_offset }
    it { is_expected.to include :preview_length }
    it { is_expected.to include :last_message_id }
  end
end
