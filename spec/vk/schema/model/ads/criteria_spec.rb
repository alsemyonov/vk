# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/criteria'

RSpec.describe Vk::Schema::Model::Ads::Criteria do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :sex }
    it { is_expected.to include :age_from }
    it { is_expected.to include :age_to }
    it { is_expected.to include :birthday }
    it { is_expected.to include :country }
    it { is_expected.to include :cities }
    it { is_expected.to include :cities_not }
    it { is_expected.to include :statuses }
    it { is_expected.to include :groups }
    it { is_expected.to include :apps }
    it { is_expected.to include :apps_not }
    it { is_expected.to include :districts }
    it { is_expected.to include :stations }
    it { is_expected.to include :streets }
    it { is_expected.to include :schools }
    it { is_expected.to include :positions }
    it { is_expected.to include :religions }
    it { is_expected.to include :interests }
    it { is_expected.to include :interest_categories }
    it { is_expected.to include :user_devices }
    it { is_expected.to include :user_os }
    it { is_expected.to include :user_browsers }
    it { is_expected.to include :retargeting_groups }
    it { is_expected.to include :retargeting_groups_not }
    it { is_expected.to include :paying }
    it { is_expected.to include :travellers }
    it { is_expected.to include :school_from }
    it { is_expected.to include :school_to }
    it { is_expected.to include :uni_from }
    it { is_expected.to include :uni_to }
  end
end
