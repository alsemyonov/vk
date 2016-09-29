# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/save_profile_info'

RSpec.describe Vk::API::Account::Methods::SaveProfileInfo do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :first_name }
    it { is_expected.to include :last_name }
    it { is_expected.to include :maiden_name }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :cancel_request_id }
    it { is_expected.to include :sex }
    it { is_expected.to include :relation }
    it { is_expected.to include :relation_partner_id }
    it { is_expected.to include :bdate }
    it { is_expected.to include :bdate_visibility }
    it { is_expected.to include :home_town }
    it { is_expected.to include :country_id }
    it { is_expected.to include :city_id }
    it { is_expected.to include :status }
  end
end
