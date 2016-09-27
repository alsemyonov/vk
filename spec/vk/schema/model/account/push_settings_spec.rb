# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/account/push_settings'

RSpec.describe Vk::Schema::Model::Account::PushSettings do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :disabled }
    it { is_expected.to include :disabled_until }
    it { is_expected.to include :conversations }
    it { is_expected.to include :settings }
  end
end
