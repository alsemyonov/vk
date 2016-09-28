# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/link_status'

RSpec.describe Vk::API::Ads::LinkStatus do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :status }
    it { is_expected.to include :description }
    it { is_expected.to include :redirect_url }
  end
end
