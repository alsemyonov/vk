# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/change_password'

RSpec.describe Vk::API::Account::Methods::ChangePassword do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :restore_sid }
    it { is_expected.to include :change_password_hash }
    it { is_expected.to include :old_password }
    it { is_expected.to include :new_password }
  end
end
