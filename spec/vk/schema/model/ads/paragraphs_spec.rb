# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/ads/paragraphs'

RSpec.describe Vk::Schema::Model::Ads::Paragraphs do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :paragraph }
  end
end
