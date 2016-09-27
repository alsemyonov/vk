# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/groups/group'

RSpec.describe Vk::Schema::Model::Groups::Group do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

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
  end
end
