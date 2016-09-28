# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/ads/targ_suggestions_schools'

RSpec.describe Vk::API::Ads::TargSuggestionsSchools do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :name }
    it { is_expected.to include :desc }
    it { is_expected.to include :type }
    it { is_expected.to include :parent }
  end
end
