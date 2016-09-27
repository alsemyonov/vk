# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/gifts/layout'

RSpec.describe Vk::Schema::Model::Gifts::Layout do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :thumb_256 }
    it { is_expected.to include :thumb_96 }
    it { is_expected.to include :thumb_48 }
  end
end
