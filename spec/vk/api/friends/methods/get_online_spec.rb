# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/get_online'

RSpec.describe Vk::API::Friends::Methods::GetOnline do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :list_id }
    it { is_expected.to include :online_mobile }
    it { is_expected.to include :order }
    it { is_expected.to include :count }
    it { is_expected.to include :offset }
  end
end
