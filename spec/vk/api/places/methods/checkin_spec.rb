# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/places/methods/checkin'

RSpec.describe Vk::API::Places::Methods::Checkin do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :place_id }
    it { is_expected.to include :text }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :friends_only }
    it { is_expected.to include :services }
  end
end
