# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/apps/methods/get_friends_list'

RSpec.describe Vk::API::Apps::Methods::GetFriendsList do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
    it { is_expected.to include :type }
    it { is_expected.to include :fields }
  end
end
