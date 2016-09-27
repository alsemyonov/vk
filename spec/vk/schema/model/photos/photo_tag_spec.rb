# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/photos/photo_tag'

RSpec.describe Vk::Schema::Model::Photos::PhotoTag do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :id }
    it { is_expected.to include :placer_id }
    it { is_expected.to include :tagged_name }
    it { is_expected.to include :date }
    it { is_expected.to include :x }
    it { is_expected.to include :y }
    it { is_expected.to include :x2 }
    it { is_expected.to include :y2 }
    it { is_expected.to include :viewed }
  end
end
