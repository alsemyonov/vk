# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/messages/methods/get_last_activity'

RSpec.describe Vk::API::Messages::Methods::GetLastActivity do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
  end
end
