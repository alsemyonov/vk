# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/flood_stats'

RSpec.describe Vk::API::Ads::FloodStats do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :left }
    it { is_expected.to include :refresh }
  end
end
