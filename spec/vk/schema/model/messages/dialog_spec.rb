# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/messages/dialog'

RSpec.describe Vk::Schema::Model::Messages::Dialog do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :unread }
    it { is_expected.to include :message }
    it { is_expected.to include :in_read }
    it { is_expected.to include :out_read }
  end
end
