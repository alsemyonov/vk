# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/base/sticker'

RSpec.describe Vk::Schema::Model::Base::Sticker do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :product_id }
    it { is_expected.to include :photo_64 }
    it { is_expected.to include :photo_128 }
    it { is_expected.to include :photo_256 }
    it { is_expected.to include :photo_352 }
    it { is_expected.to include :width }
    it { is_expected.to include :height }
  end
end
