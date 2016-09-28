# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/places/checkin'

RSpec.describe Vk::API::Places::Checkin do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :user_id }
    it { is_expected.to include :date }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :place_id }
    it { is_expected.to include :text }
    it { is_expected.to include :distance }
    it { is_expected.to include :place_title }
    it { is_expected.to include :place_country }
    it { is_expected.to include :place_city }
    it { is_expected.to include :place_type }
    it { is_expected.to include :place_icon }
  end
end
