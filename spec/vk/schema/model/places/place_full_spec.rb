# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/places/place_full'

RSpec.describe Vk::Schema::Model::Places::PlaceFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :title }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :created }
    it { is_expected.to include :icon }
    it { is_expected.to include :checkins }
    it { is_expected.to include :type }
    it { is_expected.to include :country }
    it { is_expected.to include :city }
    it { is_expected.to include :address }
    it { is_expected.to include :distance }
    it { is_expected.to include :group_id }
    it { is_expected.to include :group_photo }
  end
end
