# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/friend_status'

RSpec.describe Vk::API::Friends::FriendStatus do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :friend_status }
    it { is_expected.to include :request_message }
    it { is_expected.to include :read_state }
    it { is_expected.to include :sign }
  end
end
