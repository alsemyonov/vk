# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/fave/faves_link'

RSpec.describe Vk::API::Fave::FavesLink do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :url }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :photo_50 }
    it { is_expected.to include :photo_100 }
    it { is_expected.to include :photo_200 }
  end
end
