# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/set_activity'

RSpec.describe Vk::API::Messages::Methods::SetActivity do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :type }
    it { is_expected.to include :peer_id }
  end
end
