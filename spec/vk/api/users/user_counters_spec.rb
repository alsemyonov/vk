# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/user_counters'

RSpec.describe Vk::API::Users::UserCounters do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :albums }
    it { is_expected.to include :videos }
    it { is_expected.to include :audios }
    it { is_expected.to include :notes }
    it { is_expected.to include :photos }
    it { is_expected.to include :groups }
    it { is_expected.to include :gifts }
    it { is_expected.to include :friends }
    it { is_expected.to include :online_friends }
    it { is_expected.to include :user_photos }
    it { is_expected.to include :user_videos }
    it { is_expected.to include :followers }
    it { is_expected.to include :subscriptions }
    it { is_expected.to include :pages }
  end
end
