# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/attachments_history'

RSpec.describe Vk::API::Messages::AttachmentsHistory do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :photo }
    it { is_expected.to include :video }
    it { is_expected.to include :audio }
    it { is_expected.to include :doc }
    it { is_expected.to include :link }
  end
end
