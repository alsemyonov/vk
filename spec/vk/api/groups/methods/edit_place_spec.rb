# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/edit_place'

RSpec.describe Vk::API::Groups::Methods::EditPlace do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :title }
    it { is_expected.to include :address }
    it { is_expected.to include :country_id }
    it { is_expected.to include :city_id }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
  end
end
