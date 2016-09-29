# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/places/methods/get_checkins'

RSpec.describe Vk::API::Places::Methods::GetCheckins do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :place }
    it { is_expected.to include :user_id }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :timestamp }
    it { is_expected.to include :friends_only }
    it { is_expected.to include :need_places }
  end
end
