# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/wall/post_source'

RSpec.describe Vk::Schema::Model::Wall::PostSource do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :platform }
    it { is_expected.to include :data }
    it { is_expected.to include :url }
  end
end
