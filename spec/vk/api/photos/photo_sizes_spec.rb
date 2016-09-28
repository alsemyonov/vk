# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/photo_sizes'

RSpec.describe Vk::API::Photos::PhotoSizes do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :src }
    it { is_expected.to include :width }
    it { is_expected.to include :height }
    it { is_expected.to include :type }
  end
end
