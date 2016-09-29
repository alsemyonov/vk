# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/methods/get_suggestions'

RSpec.describe Vk::API::Ads::Methods::GetSuggestions do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :section }
    it { is_expected.to include :ids }
    it { is_expected.to include :q }
    it { is_expected.to include :country }
    it { is_expected.to include :cities }
    it { is_expected.to include :lang }
  end
end
