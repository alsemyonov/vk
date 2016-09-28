# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/dialog'

RSpec.describe Vk::API::Messages::Dialog do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :unread }
    it { is_expected.to include :message }
    it { is_expected.to include :in_read }
    it { is_expected.to include :out_read }
  end
end
