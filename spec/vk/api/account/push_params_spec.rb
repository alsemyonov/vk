# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/push_params'

RSpec.describe Vk::API::Account::PushParams do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :msg }
    it { is_expected.to include :chat }
    it { is_expected.to include :friend }
    it { is_expected.to include :friend_found }
    it { is_expected.to include :friend_accepted }
    it { is_expected.to include :reply }
    it { is_expected.to include :comment }
    it { is_expected.to include :mention }
    it { is_expected.to include :like }
    it { is_expected.to include :repost }
    it { is_expected.to include :wall_post }
    it { is_expected.to include :wall_publish }
    it { is_expected.to include :group_invite }
    it { is_expected.to include :group_accepted }
    it { is_expected.to include :event_soon }
    it { is_expected.to include :photos_tag }
    it { is_expected.to include :app_request }
    it { is_expected.to include :sdk_open }
    it { is_expected.to include :new_post }
    it { is_expected.to include :birthday }
  end
end
