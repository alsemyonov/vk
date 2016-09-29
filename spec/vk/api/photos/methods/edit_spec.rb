# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/edit'

RSpec.describe Vk::API::Photos::Methods::Edit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :photo_id }
    it { is_expected.to include :caption }
    it { is_expected.to include :latitude }
    it { is_expected.to include :longitude }
    it { is_expected.to include :place_str }
    it { is_expected.to include :foursquare_id }
    it { is_expected.to include :delete_place }
  end
end
