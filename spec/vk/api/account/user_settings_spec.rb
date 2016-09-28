# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/user_settings'

RSpec.describe Vk::API::Account::UserSettings do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :first_name }
    it { is_expected.to include :last_name }
    it { is_expected.to include :maiden_name }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :sex }
    it { is_expected.to include :relation }
    it { is_expected.to include :relation_partner }
    it { is_expected.to include :relation_pending }
    it { is_expected.to include :relation_requests }
    it { is_expected.to include :bdate }
    it { is_expected.to include :bdate_visibility }
    it { is_expected.to include :home_town }
    it { is_expected.to include :country }
    it { is_expected.to include :city }
    it { is_expected.to include :status }
    it { is_expected.to include :phone }
    it { is_expected.to include :name_request }
  end
end
