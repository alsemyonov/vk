# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/wall/wall_link'

RSpec.describe Vk::Schema::Model::Wall::WallLink do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :url }
    it { is_expected.to include :title }
    it { is_expected.to include :caption }
    it { is_expected.to include :description }
    it { is_expected.to include :photo }
    it { is_expected.to include :is_external }
    it { is_expected.to include :preview_url }
    it { is_expected.to include :preview_page }
    it { is_expected.to include :button }
    it { is_expected.to include :product }
    it { is_expected.to include :rating }
  end
end
