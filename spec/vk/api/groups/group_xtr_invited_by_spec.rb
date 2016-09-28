# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/group_xtr_invited_by'

RSpec.describe Vk::API::Groups::GroupXtrInvitedBy do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :name }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :is_closed }
    it { is_expected.to include :type }
    it { is_expected.to include :is_admin }
    it { is_expected.to include :admin_level }
    it { is_expected.to include :is_member }
    it { is_expected.to include :photo_50 }
    it { is_expected.to include :photo_100 }
    it { is_expected.to include :photo_200 }
    it { is_expected.to include :invited_by }
  end
end
