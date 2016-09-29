# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/are_friends'

RSpec.describe Vk::API::Friends::Methods::AreFriends do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_ids }
    it { is_expected.to include :need_sign }
  end
end
