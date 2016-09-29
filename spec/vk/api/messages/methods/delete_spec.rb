# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/delete'

RSpec.describe Vk::API::Messages::Methods::Delete do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :message_ids }
    it { is_expected.to include :spam }
  end
end
